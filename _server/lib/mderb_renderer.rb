# frozen_string_literal: true

module Sinatra
  module MderbRenderer
    def mderb(section, path)
      document = settings.storage.load(section, path)
      render_mderb(document[:contents])
    end

    private

    def render_mderb(contents)
      render_erb(render_markdown(contents))
    end

    def render_markdown(contents)
      settings.markdown_renderer.render(contents)
    end

    def render_erb(contents)
      erb(contents)
    end
  end

  helpers MderbRenderer
end
