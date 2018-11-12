# frozen_string_literal: true

module Storage
  class Redis < Dummy
    def initialize(paths)
      @paths = paths
      @redis = ::Redis.new

      import_file_storage
    end

    def receive_document(path)
      contents = @redis.get(path)
      unserialize(contents)
    end

    def list_documents(path="")
      target = [@paths[:contents], path].join("/") + "*"
      @redis.keys(target)
    end

    def receive_data(path)
      receive_document(path)
    end

    private

    def import_file_storage
      @redis.flushall

      file_storage = Storage::File.new(@paths)

      file_storage.list_documents_and_translations.each do |document_path|
        @redis.set(
          document_path,
          serialize(file_storage.receive_document(document_path))
        )
      end

      file_storage.list_data.each do |data_path|
        @redis.set(
          data_path,
          serialize(file_storage.receive_data(data_path))
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

    private

    def serialize(obj)
      Marshal.dump(obj).force_encoding('utf-8')
    end

    def unserialize(obj)
      Marshal.load(obj.force_encoding("ascii"))
    end
  end
end
