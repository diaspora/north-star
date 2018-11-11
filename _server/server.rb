# frozen_string_literal: true

class Server < Sinatra::Base
  # Load storage and config early so we can access it in other modules
  register Sinatra::Configs::Storage
  configure do
    set :config, settings.storage.load_data("config")
  end

  helpers Sinatra::ContentHelpers
  helpers Sinatra::Cookies
  helpers Sinatra::MderbRenderer
  register Sinatra::Configs::Assets
  register Sinatra::Configs::I18n
  register Sinatra::SiteModules::LocaleSelect
  use Rack::Protection::PathTraversal

  configure do
    set :markdown_renderer, ::MarkdownRenderer.new
  end

  not_found do
    document = settings.storage.load_document("meta", "404")
    mderb(document)
  end

  before do
    @config = settings.config

    @section = (request.path_info.split("/")[1] || "meta").to_sym
    unless @config[:sections].include?(@section)
      @section = :meta
    end
  end

  get "/*/*" do |section, document_path|
    document = settings.storage.load_document(section, document_path)
    halt 404 unless document
    mderb(document)
  end

  get "/" do
    document = settings.storage.load_document("meta", "dev_index")
    mderb(document)
  end
end
