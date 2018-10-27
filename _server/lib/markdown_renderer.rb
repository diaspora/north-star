# frozen_string_literal: true

class MarkdownRenderer
  def self.get
    Redcarpet::Markdown.new(renderer, settings)
  end

  def self.renderer
    Redcarpet::Render::HTML
  end

  def self.settings
    {
      fenced_code_blocks:  true,
      footnotes:           true,
      highlight:           true,
      space_after_headers: true,
      strikethrough:       true,
      superscript:         true,
      tables:              true,
      underline:           true
    }
  end
end
