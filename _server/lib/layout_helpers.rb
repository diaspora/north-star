# frozen_string_literal: true

module Sinatra
  module LayoutHelpers
    def col_start
      '<div class="multicol col" markdown="1">'
    end

    def col_end
      "</div>\n"
    end

    def col_new
      col_end + col_start
    end

    def row_start
      '<div class="multicol row">' + col_start
    end

    def row_end
      col_end + "</div>\n"
    end

    def row_new
      row_end + row_start
    end

    def warning_box_start(type="")
      '<div class="markdown-warning-box ' + type + '" markdown="1">'
    end

    def warning_box_end
      "</div>\n"
    end
  end

  helpers LayoutHelpers
end
