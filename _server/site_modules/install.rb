# frozen_string_literal: true

module Sinatra
  module SiteModules
    module Install
      VALID_ENV_PARAMS = %i[database distribution env proxy system version].freeze
      VALID_DATABASE_ENGINES = %i[mariadb postgres].freeze

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
              hash = Hash[VALID_ENV_PARAMS.map {|key|
                next unless symbolized_params[key]

                [key, symbolized_params[key].to_sym]
              }.compact]

              if hash[:env]
                env, method = hash[:env].to_s.split("_")
                hash[:env] = env.to_sym
                hash[:method] = method.to_sym
              end

              hash
            end

            def valid_env?(params)
              valid_env = @install_environments.dig(
                params[:system],
                :distributions,
                params[:distribution],
                :versions,
                params[:version]
              ).present?

              valid_db = true
              valid_db = VALID_DATABASE_ENGINES.include?(params[:database]) if params[:database]

              valid_env && valid_db
            end

            def supported?(params)
              @install_environments.dig(
                params[:system],
                :supports,
                params[:env],
                params[:method]
              )
            end

            def guide_data(params)
              system_data = @install_environments[params[:system]]
              distribution_data = system_data[:distributions][params[:distribution]]
              version_data = distribution_data[:versions][params[:version]]

              guide_data = distribution_data[:guide]

              if version_data[:overrides]
                # We allow the YML to contain overrides for specific versions of a
                # given distribution, so we need to deep_merge here.
                guide_data.deep_merge!(version_data[:overrides][:guide]) if version_data[:overrides][:guide]
              end

              {
                env_title: "#{distribution_data[:title]} #{version_data[:title]}",
                guide:     guide_data,
                params:    params,
                supports:  system_data[:supports]
              }
            end

            def package_install_command(lists)
              packages = []
              lists.map do |list|
                packages += @guide_data[:guide][:packaging][:lists][list]
              end

              [
                @guide_data[:guide][:packaging][:install_command],
                packages.sort.join(" ")
              ].join(" ") + "\n"
            end

            def install_url_params
              params = @guide_data[:params].dup
              params[:env] = [params[:env], params[:method]].join("_")
              params.delete(:method)

              "?" + params.to_query
            end

            def guided_only_content_start
              '<div class="guided-only-content" markdown="1">'
            end

            def guided_only_content_end
              "</div>"
            end
          end

          before do
            @install_environments = settings.storage.load_data("installation_environments")
            @install_params = filtered_install_parameters(params)
          end

          get "/(index)?" do
            mderb(settings.storage.load_document("install", "index"))
          end

          get "/version_select" do
            @available_environments = available_environments
            mderb(settings.storage.load_document("install", "version_select"))
          end

          get "/docker" do
            halt 404 unless valid_env?(@install_params)

            @install_params[:env] = :development
            @install_params[:method] = :docker
            halt 404 unless supported?(@install_params)

            @guide_data = guide_data(@install_params)

            mderb(settings.storage.load_document("install", "docker"))
          end

          get "/manual/full" do
            document = settings.storage.load_document("install", "manual/full")

            halt 404 unless valid_env?(@install_params)
            halt 404 unless supported?(@install_params)

            @guide_data = guide_data(@install_params)

            steps = %w[system_preparation install_ruby get_diaspora initialize_diaspora]
            steps.push("finalize_server") if @guide_data[:params][:env] == :production
            @step_contents = steps.map {|step| load_document("install", "manual/guided/#{step}") }

            mderb(document)
          end

          get "/*" do |document_path|
            document = settings.storage.load_document("install", document_path)

            halt 404 unless document
            halt 404 unless valid_env?(@install_params)
            halt 404 unless supported?(@install_params)

            @guide_data = guide_data(@install_params)

            mderb(document)
          end
        end
      end
    end
  end
end
