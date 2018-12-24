# frozen_string_literal: true

module Sinatra
  module SiteModules
    module Guides
      def self.registered(app)
        app.namespace "/guides" do
          helpers do
            def load_from_list(section, list)
              list.map {|name| load_document("guides", "#{section}/#{name}") }
            end

            def list(section)
              list_documents("guides", section)
                .sort_by {|document| document[:path] }
                .reverse
                .map {|item| load_document("guides", item[:path]) }
            end

            def guide_url(guide)
              url_to("guides", guide[:path][:path])
            end
          end

          get "/(index)?" do
            @top_guides = {}
            settings.storage.load_data("top_guides").each do |section, entries|
              @top_guides[section] = load_from_list(section.to_s, entries)
            end

            mderb(settings.storage.load_document("guides", "index"))
          end

          get %r{/(developers|podmins|users)} do |section|
            @guides = list(section)
                      .sort_by {|guide| guide[:frontmatter][:title] }
                      .group_by {|guide| guide[:frontmatter][:category] }
                      .sort

            mderb(settings.storage.load_document("guides", section))
          end
        end
      end
    end
  end
end
