# frozen_string_literal: true

class Helpers
  def self.parent_dir_proc(root, name)
    proc { File.join(root, "..", name) }
  end
end
