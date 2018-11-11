# frozen_string_literal: true

module Sinatra
  module Configs
    module I18n
      def self.registered(app)
        app.configure do
          ::I18n::Backend::Simple.send(:include, ::I18n::Backend::Fallbacks)
          ::I18n.load_path << Dir[::Helpers.parent_dir(app.root, "strings", "*.yml")]
          ::I18n.load_path << Dir[::Helpers.parent_dir(app.root, "translations", "*", "strings", "*.yml")]

          ::I18n.available_locales.each do |locale|
            ::I18n.fallbacks[locale] = [locale, :en]
          end
        end
      end
    end
  end
end
