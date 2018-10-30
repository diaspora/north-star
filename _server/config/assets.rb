# frozen_string_literal: true

module Sinatra
  module Configs
    module Assets
      def self.registered(app)
        app.configure do
          app.set :assets_paths, %w[
            assets/javascripts
            assets/stylesheets
          ]

          app.set :assets_css_compressor, :sass
          app.set :assets_js_compressor, :uglifier

          app.set :public_folder, ::Helpers.parent_dir(app.root, "statics")

          app.register Sinatra::AssetPipeline
          RailsAssets.load_paths.each do |path|
            app.settings.sprockets.append_path(path)
          end

          app.set :static, false
        end

        app.configure :development do
          app.set :static, true
        end
      end
    end
  end
end
