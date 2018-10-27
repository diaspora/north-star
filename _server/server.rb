# frozen_string_literal: true

class Server < Sinatra::Base
  configure do
    set :assets_paths, %w[
      assets/javascripts
      assets/stylesheets
    ]

    set :assets_css_compressor, :sass
    set :assets_js_compressor, :uglifier

    set :contents_folder, ::Helpers.parent_dir_proc(root, "statics")
    set :data_folder, ::Helpers.parent_dir_proc(root, "data")
    set :public_folder, ::Helpers.parent_dir_proc(root, "statics")
    set :strings_folder, ::Helpers.parent_dir_proc(root, "strings")
    set :translations_folder, ::Helpers.parent_dir_proc(root, "translations")

    set :static, false

    set :markdown_renderer, ::MarkdownRenderer.get
    set :storage, ::Storage::Redis.new

    register Sinatra::AssetPipeline
    RailsAssets.load_paths.each do |path|
      settings.sprockets.append_path(path)
    end
  end

  configure :development do
    register Sinatra::Reloader
    also_reload "lib/**/*.rb"

    set :static, true
    set :storage, ::Storage::File.new
  end

  use Rack::Protection::PathTraversal
  helpers Sinatra::MderbRenderer

  get "/" do
    mderb "index"
  end
end
