# frozen_string_literal: true

module Sinatra
  module StorageHelpers
    def data(path)
      settings.storage.load_data(path)
    end

    def list_documents(section, path="")
      settings.storage.list_documents(File.join(section, path)).sort.map {|path|
        settings.storage.document_path_info(path)
      }
    end

    def load_document(section, path)
      settings.storage.load_document(section, path)
    end
  end

  helpers StorageHelpers
end
