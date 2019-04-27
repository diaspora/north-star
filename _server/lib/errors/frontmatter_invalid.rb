module Errors
  class FrontmatterInvalid < RuntimeError
    def initialize(filename, exception)
      @filename = filename
      @exception = exception
    end

    def message
      [
        "in file",
        @filename,
        "-",
        @exception.to_s
      ].join(" ")
    end

    def full_message
      message
    end
  end
end
