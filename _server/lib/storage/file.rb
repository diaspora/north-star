# frozen_string_literal: true

module Storage
  class File < Dummy
    # From https://github.com/jekyll/jekyll/blob/587111ec9f3e5a2d6d2dc60ce8b0ec651ded27b7/lib/jekyll/document.rb#L13
    # MIT license, see link for details.
    YAML_FRONT_MATTER_REGEXP = /\A(---\s*\n.*?\n?)^((---|\.\.\.)\s*$\n?)/m

    def initialize(paths)
      @paths = paths
    end

    def load(section, path)
      document = read_file(section, path)
      split_contents(document)
    end

    private

    def read_file(section, path)
      ::File.read(::Helpers.path_expand_join(@paths[:contents], section, "#{path}.md"))
    end

    def split_contents(contents)
      matches = YAML_FRONT_MATTER_REGEXP.match(contents)
      {
        frontmatter: YAML.safe_load(matches[1]).symbolize_keys,
        contents:    matches.post_match
      }
    end
  end
end
