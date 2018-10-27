# frozen_string_literal: true

module Storage
  class Redis < Dummy
    def initialize(paths)
      @paths = paths
    end
  end
end
