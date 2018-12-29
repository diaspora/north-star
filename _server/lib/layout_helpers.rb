# frozen_string_literal: true

module Sinatra
  module LayoutHelpers
    def center_start
      '<p class="text-center" markdown="1">'
    end

    def center_end
      "</p>\n"
    end

    def col_start(col_classes)
      '<div class="' + col_classes + '" markdown="1">'
    end

    def col_end
      "</div>\n"
    end

    def col_new(col_classes)
      col_end + col_start(col_classes)
    end

    def row_start(col_classes)
      '<div class="row">' + col_start(col_classes)
    end

    def row_end
      col_end + "</div>\n"
    end

    def row_new(col_classes)
      row_end + row_start(col_classes)
    end

    def warning_box_start(alert_class="primary")
      '<div class="markdown-warning-box alert alert-' + alert_class + '" markdown="1">'
    end

    def warning_box_end
      "</div>\n"
    end
  end

  helpers LayoutHelpers
end
