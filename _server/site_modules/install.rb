# frozen_string_literal: true

module Sinatra
  module SiteModules
    module Install
      VALID_ENV_PARAMS = %i[database distribution env proxy system version].freeze

      def self.registered(app)
        app.namespace "/install" do
          helpers do
            def get_keys_from_hash(hash, keys)
              hash.select {|key, _| keys.include? key }
            end

            def available_environments
              # This isn't the nicest piece of code, but I somehow need to filter the keys set in the resulting hash,
              # as everything in the hash gets serialized to JSON and passed to the frontend. There is no nice
              # map/select for multi-level operations, so let's stick with that until someone has a better idea.
              version_list = {}

              @install_environments.each {|env, env_data|
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

            def filtered_install_parameters(params)
              symbolized_params = params.deep_symbolize_keys
              Hash[VALID_ENV_PARAMS.map {|key|
                next unless symbolized_params[key]

                [key, symbolized_params[key].to_sym]
              }.compact!]
            end

            def valid_env?(params)
              @install_environments.dig(
                params[:system],
                :distributions,
                params[:distribution],
                :versions,
                params[:version]
              ).present?
            end

            def supports?(params, env, method)
              @install_environments[params[:system]][:supports][env][method]
            end
          end

          before do
            @install_environments = settings.storage.load_data("installation_environments")
            @install_params = filtered_install_parameters(params)
          end

          get "/(index)?" do
            @available_environments = available_environments
            mderb(settings.storage.load_document("install", "index"))
          end

          get "/docker" do
            halt 404 unless valid_env?(@install_params)
            halt 404 unless supports?(@install_params, :development, :docker)

            mderb(settings.storage.load_document("install", "docker"))
          end
        end
      end
    end
  end
end
