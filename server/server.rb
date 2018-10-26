# frozen_string_literal: true

class Server < Sinatra::Base
  use Rack::Protection::PathTraversal

  configure :development do
    register Sinatra::Reloader
    set :public_folder, (proc { File.join(root, "..", "statics") })
  end

  get "/" do
    erb "tmp"
  end
end
