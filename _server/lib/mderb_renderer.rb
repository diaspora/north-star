# frozen_string_literal: true

module Sinatra
  module MderbRenderer
    def mderb(document)
      contents = render_markdown(document[:contents])

      erb(
        contents,
        locals: {
          page: document[:frontmatter]
        }
      )
    end

    private

    def render_markdown(contents)
      settings.markdown_renderer.render(contents)
    end
  end

  helpers MderbRenderer
end
