# frozen_string_literal: true

module Storage
  class Redis < Dummy
    def initialize(paths)
      @paths = paths
      @redis = ::Redis.new

      import_contents
    end

    def receive_document(path)
      contents = @redis.get(path)
      JSON.parse(contents).deep_symbolize_keys
    end

    private

    def import_contents
      @redis.flushall

      file_storage = Storage::File.new(@paths)
      file_storage.list_documents.each do |document_path|
        @redis.set(
          document_path,
          file_storage.receive_document(document_path).to_json
        )
      end
    end

    def file_exist?(path)
      @redis.keys(path).present?
    end

    def dir_exist?(path)
      path += "/" unless path[-1] == "/"
      @redis.keys("#{path}*").present?
    end
  end
end
