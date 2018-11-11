# frozen_string_literal: true

module Sinatra
  module ContentHelpers
    def page_title(title = false)
      section_title = I18n.t("section_titles.#{@section}")
      [title, section_title].select { |c| c.present? }.join(" - ")
    end
  end

  helpers ContentHelpers
end
