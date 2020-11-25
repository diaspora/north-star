# frozen_string_literal: true

ROOT_DIR = File.expand_path(File.join(__dir__, "..", "..", ".."))

class NorthStarI18n
  def self.translateable_files
    Dir.chdir(ROOT_DIR)
    FileList.new(
      "contents/**/*.md",
      "strings/*.yml"
    ) do |list|
      list.exclude("contents/install/**/*")
      list.exclude("contents/blog/**/*")
      list.exclude("contents/meta/index.md")
    end
  end

  def self.transifex_config_file_info(path)
    {
      path: path,
      slug: slugify(path),
      type: get_type_for_extension(path)
    }
  end

  def self.slugify(path)
    path.split(".")[0..-2].join(".").downcase.gsub(/[^0-9a-z\-_]/i, "_")
  end

  def self.get_type_for_extension(path)
    ext = path.split(".").last
    case ext
    when "md"
      "GITHUBMARKDOWN"
    when "yml"
      "YML"
    else
      raise "File extension '#{ext}' not known!"
    end
  end
end

namespace :i18n do
  desc "Generates the Transifex config file"
  task :generate_config do
    puts "Generating Transifex config file..."

    files = NorthStarI18n
            .translateable_files
            .sort
            .map(&NorthStarI18n.method(:transifex_config_file_info))

    template = File.read(File.join(ROOT_DIR, "_server", "meta", "transifex-config.erb"))
    config = ERB.new(template).result(binding)

    Dir.chdir(ROOT_DIR) do
      Dir.mkdir(".tx") unless Dir.exist?(".tx")
      File.write(File.join(".tx", "config"), config)
    end
  end

  desc "Removes all currently pulled translations"
  task :clean do
    puts "Removing currently pulled translations..."

    Dir.chdir(ROOT_DIR) do
      FileUtils.rm_r(Dir.glob(File.join(ROOT_DIR, "translations", "*")))
    end
  end

  desc "Pushes the source files to Transifex"
  task :push do
    puts "Pushing source files..."

    Dir.chdir(ROOT_DIR) do
      system("tx push --no-interactive --parallel -s")
    end
  end

  desc "Pulls all available, reviewed translations"
  task pull: :clean do
    puts "Pulling translations..."

    Dir.chdir(ROOT_DIR) do
      system("tx pull --no-interactive --parallel -a --mode onlyreviewed --minimum-perc 1")
    end
  end
end
