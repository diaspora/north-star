# frozen_string_literal: true

module Storage
  class Dummy
  end

  require_relative "storage/file"
  require_relative "storage/redis"
end
