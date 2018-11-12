# frozen_string_literal: true

module Sinatra
  module SiteModules
    module Blog
      def self.registered(app)
        app.namespace "/blog" do
          helpers do
            def sort_blog(documents)
              documents
                .sort_by {|document| document[:path] }
                .reverse
            end

            def blog_url(article)
              url_to("blog", article[:path][:path])
            end

            def format_date(date)
              date.strftime("#{date.day.ordinalize} %B, %Y")
            end

            def format_short_date(date)
              date.strftime("%Y-%m-%d")
            end
          end

          before do
            articles_list = sort_blog(list_documents("blog", "articles"))
            releases_list = sort_blog(list_documents("blog", "releases"))
            last_article = sort_blog([].concat(articles_list, releases_list))[0]

            @latest_articles = articles_list.map {|file| load_document("blog", file[:path]) }
            @latest_releases = releases_list.map {|file| load_document("blog", file[:path]) }
            @latest_blog = load_document("blog", last_article[:path])
          end
        end
      end
    end
  end
end
