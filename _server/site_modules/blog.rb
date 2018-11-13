# frozen_string_literal: true

module Sinatra
  module SiteModules
    module Blog
      MAX_ITEMS_IN_FEED = 10
      MAX_ITEMS_IN_LIST = 3

      def self.registered(app)
        app.namespace "/blog" do
          helpers do
            def list(path)
              list_documents("blog", path)
                .sort_by {|document| document[:path] }
                .reverse
                .map {|item| load_document("blog", item[:path]) }
            end

            def blog_url(article)
              url_to("blog", article[:path][:path])
            end
          end

          get "/(index)?" do
            @latest_articles = list("articles").take(MAX_ITEMS_IN_LIST)
            @latest_releases = list("releases").take(MAX_ITEMS_IN_LIST)
            @latest_blog = [].concat(@latest_articles, @latest_releases).max_by {|page| page[:path][:path] }

            mderb(settings.storage.load_document("blog", "index"))
          end

          get "/releases" do
            @items = list("releases")
            mderb(settings.storage.load_document("blog", "releases"))
          end

          get "/articles" do
            @items = list("articles")
            mderb(settings.storage.load_document("blog", "articles"))
          end

          def render_feed(items, title)
            @items = items
            @feed = {
              id:      request.url,
              title:   page_title(title),
              updated: items.first[:frontmatter][:date]
            }
            content_type "application/atom+xml"
            erb :"sites/atom_feed"
          end

          get "/feeds/all.xml" do
            items = [].concat(list("articles").take(MAX_ITEMS_IN_FEED), list("releases").take(MAX_ITEMS_IN_FEED))
                      .sort_by {|page| page[:path][:path] }.reverse
                      .take(MAX_ITEMS_IN_FEED)
            render_feed(items, ::I18n.t("blog.feeds.all"))
          end

          get "/feeds/releases.xml" do
            render_feed(list("releases").take(MAX_ITEMS_IN_FEED), ::I18n.t("blog.feeds.releases"))
          end

          get "/feeds/articles.xml" do
            render_feed(list("articles").take(MAX_ITEMS_IN_FEED), ::I18n.t("blog.feeds.articles"))
          end
        end
      end
    end
  end
end
