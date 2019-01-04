# frozen_string_literal: true

module Storage
  class File < Dummy
    # From https://github.com/jekyll/jekyll/blob/587111ec9f3e5a2d6d2dc60ce8b0ec651ded27b7/lib/jekyll/document.rb#L13
    # MIT license, see link for details.
    YAML_FRONT_MATTER_REGEXP = /\A(---\s*\n.*?\n?)^((---|\.\.\.)\s*$\n?)/m

    def initialize(paths)
      @paths = paths
    end

    def receive_document(path)
      contents = ::File.read(path)
      split_contents(contents, path)
    end

    def list_documents(path="")
      Dir[::Helpers.path_expand_join(@paths[:contents], path, "**", "*.md")]
    end

    def list_documents_and_translations
      [].concat(
        list_documents,
        Dir[::Helpers.path_expand_join(@paths[:translations], "*", "contents", "**", "*.md")]
      )
    end

    def receive_data(path)
      contents = ::File.read(path)
      YAML.load(contents).deep_symbolize_keys
    end

    def list_data(path="")
      Dir[::Helpers.path_expand_join(@paths[:data], path, "**", "*.yml")]
    end

    private

    def file_exist?(path)
      ::File.exist?(path)
    end

    def dir_exist?(path)
      ::Dir.exist?(path)
    end

    def split_contents(contents, path)
      matches = YAML_FRONT_MATTER_REGEXP.match(contents)
      if matches
        frontmatter = YAML.load(matches[1]) || {}
        {
          contents:    matches.post_match,
          frontmatter: frontmatter.deep_symbolize_keys,
          path:        document_path_info(path)
        }
      else
        {
          contents:    contents,
          frontmatter: {},
          path:        document_path_info(path)
        }
      end
    end
  end
end
