# frozen_string_literal: true

module Sinatra
  module SiteModules
    module LocaleSelect
      def self.registered(app) # rubocop:disable Metrics/AbcSize
        app.before do
          return unless @section_config[:translateable]

          user_locale = false

          if cookies[:force_locale] && ::I18n.available_locales.include?(cookies[:force_locale].to_sym)
            user_locale = cookies[:force_locale].to_sym
          end

          user_locale ||= env.http_accept_language.preferred_language_from(::I18n.available_locales)
          user_locale ||= ::I18n.default_locale

          I18n.locale = user_locale
        end

        app.get "/:section/force_locale/:locale" do
          halt 404 unless ::I18n.available_locales.include?(params[:locale].to_sym)

          cookies[:force_locale] = params[:locale].downcase
          redirect request.referer
        end
      end
    end
  end
end
