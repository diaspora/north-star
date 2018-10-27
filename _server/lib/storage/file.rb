# frozen_string_literal: true

module Storage
  class File < Dummy
    def load(path)
      {
        frontmatter: {},
        contents:    "**This** is *just* a _test_ doing some `Markdown`."
      }
    end
  end
end
