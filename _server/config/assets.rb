# frozen_string_literal: true

module Sinatra
  module Configs
    module Assets
      def self.registered(app)
        app.configure do
          if app.production?
            app.set :assets_root, [
              app.settings.config[:use_https] ? "https" : "http",
              "://",
              app.settings.config[:statics][:domain],
              "/assets"
            ].join("")
          end

          app.set :public_folder, ::Helpers.parent_dir(app.root, "statics")
          app.set :static, false
        end

        app.configure :development do
          app.set :assets_root, "http://localhost:9393"
          app.set :static, true
        end
      end
    end
  end
end
