# frozen_string_literal: true

module Sinatra
  module MderbRenderer
    def mderb(document, layout=:"layouts/default")
      erb_locals = {
        current_path: document[:path],
        page:         document[:frontmatter]
      }

      in_content_erb = erb(document[:contents], layout: false)
      rendered_markdown = render_markdown(in_content_erb)

      erb(
        rendered_markdown,
        locals: erb_locals,
        layout: layout
      )
    end

    def mderb_inline(document)
      mderb(document, false)
    end

    private

    def render_markdown(contents)
      settings.markdown_renderer.render(contents)
    end
  end

  helpers MderbRenderer
end
