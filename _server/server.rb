# frozen_string_literal: true

class Server < Sinatra::Base
  set :assets_css_compressor, :sass
  set :assets_js_compressor, :uglifier
  set :assets_paths, %w[assets/javascripts assets/stylesheets]

  set :public_folder, (proc { File.join(root, "..", "statics") })

  use Rack::Protection::PathTraversal
  register Sinatra::AssetPipeline

  configure do
    set :static, false

    RailsAssets.load_paths.each do |path|
      settings.sprockets.append_path(path)
    end
  end

  configure :development do
    register Sinatra::Reloader

    set :static, true
  end

  get "/" do
    erb "tmp"
  end
end
