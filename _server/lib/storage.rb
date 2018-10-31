# frozen_string_literal: true

module Storage
  class Dummy
    def load_document(section, path)
      file_path = get_document_file_name(section, path, ::I18n.locale) unless ::I18n.locale == ::I18n.default_locale
      file_path ||= get_document_file_name(section, path)
      return false unless file_path

      receive_document(file_path)
    end

    def get_document_file_name(section, path, translation=false)
      root_path = if translation
                    ::Helpers.path_expand_join(@paths[:translations], translation.to_s, "contents", section, path)
                  else
                    ::Helpers.path_expand_join(@paths[:contents], section, path)
                  end
      file_path = "#{root_path}.md"

      unless file_exist?(file_path)
        return false unless dir_exist?(root_path)

        return get_document_file_name(section, "#{path}/index", translation)
      end

      file_path
    end
  end

  require_relative "storage/file"
  require_relative "storage/redis"
end
