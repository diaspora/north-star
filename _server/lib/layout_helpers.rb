# frozen_string_literal: true

module Sinatra
  module LayoutHelpers
    def col_start(col_classes)
      '<div class="' + col_classes + '" markdown="1">'
    end

    def col_end
      "</div>"
    end

    def col_new(col_classes)
      col_end + col_start(col_classes)
    end

    def row_start(col_classes)
      '<div class="row">' + col_start(col_classes)
    end

    def row_end
      col_end + "</div>"
    end

    def row_new(col_classes)
      row_end + row_start(col_classes)
    end
  end

  helpers LayoutHelpers
end
