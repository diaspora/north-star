# frozen_string_literal: true

module Sinatra
  module Configs
    module Storage
      def self.registered(app)
        app.configure do
          app.set :storage_paths,
                  contents:     ::Helpers.parent_dir(app.root, "contents"),
                  data:         ::Helpers.parent_dir(app.root, "data"),
                  strings:      ::Helpers.parent_dir(app.root, "strings"),
                  translations: ::Helpers.parent_dir(app.root, "translations")

          app.set :storage, ::Storage::Redis.new(app.settings.storage_paths)
        end

        app.configure :development do
          app.set :storage, ::Storage::File.new(app.settings.storage_paths)
        end
      end
    end
  end
end
