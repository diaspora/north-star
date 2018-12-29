# frozen_string_literal: true

module Sinatra
  module ContentHelpers
    def format_date(date)
      date.strftime("#{date.day.ordinalize} %B %Y")
    end

    def format_short_date(date)
      date.strftime("%Y-%m-%d")
    end

    def html_escape(text)
      Rack::Utils.escape_html(text)
    end

    def link_title(item)
      return I18n.t(item[:title]) if item[:title]

      document = load_document(item[:target][:section], item[:target][:path])
      document[:frontmatter][:nav_title] || document[:frontmatter][:title]
    end

    def page_title(title=false)
      section_title = I18n.t("sections.titles.#{@section}")
      [title, section_title].select(&:present?).join(" - ")
    end

    def partial(partial, locals={})
      erb partial.to_sym, locals: locals
    end

    def section_title
      section_header_title = I18n.t("sections.header_titles.#{@section}", default: "")
      ['<span class="section">', section_header_title, "</span>"].join unless section_header_title.empty?
    end

    def static_url(asset)
      return "/#{asset}" unless Sinatra::Application.production?

      asset_protocol = settings.config[:use_https] ? "https" : "http"
      asset_host = settings.config[:statics][:domain]
      "#{asset_protocol}://#{asset_host}/#{asset}"
    end

    def url_for_nav_item(target)
      return target.to_str if target.is_a?(String)

      url_to(target[:section], target[:path])
    end

    def url_to(section, path, args={})
      query = args.empty? ? "" : "?#{args.to_query}"
      return "/#{section}/#{path}#{query}" unless Sinatra::Application.production?

      protocol = settings.config[:use_https] ? "https" : "http"
      domain = settings.config[:sections][section.to_sym][:domain]

      "#{protocol}://#{domain}/#{path}"
    end
  end

  helpers ContentHelpers
end
