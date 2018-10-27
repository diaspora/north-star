# frozen_string_literal: true

class Server < Sinatra::Base
  configure do
    set :assets_paths, %w[
      assets/javascripts
      assets/stylesheets
    ]

    set :assets_css_compressor, :sass
    set :assets_js_compressor, :uglifier
    set :static, false

    set :public_folder, ::Helpers.parent_dir(root, "statics")
    set :storage_paths,
        contents:     ::Helpers.parent_dir(root, "contents"),
        data:         ::Helpers.parent_dir(root, "data"),
        strings:      ::Helpers.parent_dir(root, "strings"),
        translations: ::Helpers.parent_dir(root, "translations")

    set :markdown_renderer, ::MarkdownRenderer.get
    set :storage, ::Storage::Redis.new(settings.storage_paths)

    register Sinatra::AssetPipeline
    RailsAssets.load_paths.each do |path|
      settings.sprockets.append_path(path)
    end
  end

  configure :development do
    register Sinatra::Reloader
    also_reload("lib/**/*.rb")

    set :static, true
    set :storage, ::Storage::File.new(settings.storage_paths)
  end

  use Rack::Protection::PathTraversal
  helpers Sinatra::MderbRenderer

  not_found do
    document = settings.storage.load("meta", "404")
    mderb(document)
  end

  get "/*/*" do |section, document_path|
    document = settings.storage.load(section, document_path)
    halt 404 unless document
    mderb(document)
  end

  get "/" do
    document = settings.storage.load("meta", "dev_index")
    mderb(document)
  end
end
