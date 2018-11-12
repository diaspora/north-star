# frozen_string_literal: true

module Sinatra
  module SiteModules
    module Blog
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
            @latest_articles = list("articles").take(3)
            @latest_releases = list("releases").take(3)
            @latest_blog  = [].concat(@latest_articles, @latest_releases).max_by {|page| page[:path][:path] }

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
        end
      end
    end
  end
end
