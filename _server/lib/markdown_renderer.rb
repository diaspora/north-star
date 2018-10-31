# frozen_string_literal: true

class MarkdownRenderer
  def render(contents)
    Kramdown::Document.new(contents).to_html
  end
end
