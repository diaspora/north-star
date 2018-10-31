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
      split_contents(contents)
    end

    def list_documents
      [].concat(
        Dir[::Helpers.path_expand_join(@paths[:contents], "**", "*.md")],
        Dir[::Helpers.path_expand_join(@paths[:translations], "*", "contents", "**", "*.md")]
      )
    end

    private

    def file_exist?(path)
      ::File.exist?(path)
    end

    def dir_exist?(path)
      ::Dir.exist?(path)
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
