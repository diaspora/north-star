# frozen_string_literal: true

class Helpers
  def self.parent_dir(root, name)
    File.expand_path(File.join(root, "..", name))
  end

  def self.path_expand_join(*parts)
    File.expand_path(File.join(*parts))
  end
end
