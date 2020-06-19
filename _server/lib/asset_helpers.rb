# frozen_string_literal: true

module Sinatra
  module AssetHelpers
    def asset_url(name)
      [settings.assets_root, name].join("/")
    end
  end

  helpers AssetHelpers
end
