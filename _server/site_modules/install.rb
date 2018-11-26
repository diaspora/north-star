# frozen_string_literal: true

module Sinatra
  module SiteModules
    module Install
      def self.registered(app)
        app.namespace "/install" do
          helpers do
            def get_keys_from_hash(hash, keys)
              hash.select {|key, _| keys.include? key }
            end

            def available_environments
              environments = settings.storage.load_data("installation_environments")

              # This isn't the nicest piece of code, but I somehow need to filter the keys set in the resulting hash,
              # as everything in the hash gets serialized to JSON and passed to the frontend. There is no nice
              # map/select for multi-level operations, so let's stick with that until someone has a better idea.
              version_list = {}

              environments.each {|env, env_data|
                env_data[:distributions].each {|dist, dist_data|
                  dist_data[:versions].each {|ver, ver_data|
                    version_list[env] ||= get_keys_from_hash(env_data, %i[title icon supports distributions])
                    version_list[env][:distributions][dist] ||= get_keys_from_hash(dist_data, %i[title versions])
                    version_list[env][:distributions][dist][:versions][ver] = get_keys_from_hash(ver_data, %i[title])
                  }
                }
              }

              version_list
            end
          end

          get "/(index)?" do
            @available_environments = available_environments
            mderb(settings.storage.load_document("install", "index"))
          end
        end
      end
    end
  end
end
