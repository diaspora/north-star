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

    def get_relative_document_file_name(section, path, translation=false)
      get_document_file_name(section, path, translation).gsub(@paths[:root], "")
    end

    def document_path_info(path)
      parts = path.gsub(@paths[:contents], "").split("/").reject(&:empty?)
      {
        section: parts[0],
        path:    parts[1..-1].join("/").gsub(".md", "")
      }
    end

    def load_data(path)
      data_path = ::Helpers.path_expand_join(@paths[:data], "#{path}.yml")
      return false unless file_exist?(data_path)

      receive_data(data_path)
    end
  end

  require_relative "storage/file"
  require_relative "storage/redis"
end
