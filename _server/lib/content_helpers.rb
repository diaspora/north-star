# frozen_string_literal: true

module Sinatra
  module ContentHelpers
    def page_title(title=false)
      section_title = I18n.t("sections.titles.#{@section}")
      [title, section_title].select(&:present?).join(" - ")
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

    def url_to(section, path)
      return "/#{section}/#{path}" unless Sinatra::Application.production?

      protocol = settings.config[:use_https] ? "https" : "http"
      domain = settings.config[:sections][section.to_sym][:domain]

      "#{protocol}://#{domain}/#{path}"
    end

    def url_for_nav_item(target)
      return target.to_str if target.is_a?(String)

      url_to(target[:section], target[:path])
    end

    def partial(partial, locals={})
      erb partial.to_sym, locals: locals
    end

    def format_date(date)
      date.strftime("#{date.day.ordinalize} %B %Y")
    end

    def format_short_date(date)
      date.strftime("%Y-%m-%d")
    end
  end

  helpers ContentHelpers
end
