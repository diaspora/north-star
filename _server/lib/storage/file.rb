# frozen_string_literal: true

module Storage
  class File < Dummy
    # From https://github.com/jekyll/jekyll/blob/587111ec9f3e5a2d6d2dc60ce8b0ec651ded27b7/lib/jekyll/document.rb#L13
    # MIT license, see link for details.
    YAML_FRONT_MATTER_REGEXP = /\A(---\s*\n.*?\n?)^((---|\.\.\.)\s*$\n?)/m

    def initialize(paths)
      @paths = paths
    end

    def load_document(section, path)
      document = read_document_file(section, path, ::I18n.locale) unless ::I18n.locale == ::I18n.default_locale
      document ||= read_document_file(section, path)
      return false unless document

      split_contents(document)
    end

    private

    def read_document_file(section, path, translation=false)
      root_path = if translation
                    ::Helpers.path_expand_join(@paths[:translations], translation.to_s, "contents", section, path)
                  else
                    ::Helpers.path_expand_join(@paths[:contents], section, path)
                  end
      file_path = "#{root_path}.md"

      unless ::File.exist?(file_path)
        return false unless ::Dir.exist?(root_path)

        return read_document_file(section, "#{path}/index", translation)
      end

      ::File.read(file_path)
    end

    def split_contents(contents)
      matches = YAML_FRONT_MATTER_REGEXP.match(contents)
      if matches
        frontmatter = YAML.safe_load(matches[1]) || {}
        {
          frontmatter: frontmatter.deep_symbolize_keys,
          contents:    matches.post_match
        }
      else
        {
          frontmatter: {},
          contents:    contents
        }
      end
    end
  end
end
