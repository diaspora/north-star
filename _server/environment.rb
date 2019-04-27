# frozen_string_literal: true

require "rubygems"
require "bundler"
Bundler.require(:default, ENV["RACK_ENV"] || :development)

Dir[File.join(__dir__, "config", "*.rb")].each {|file| require file }
Dir[File.join(__dir__, "lib", "*.rb")].each {|file| require file }
Dir[File.join(__dir__, "lib", "errors", "*.rb")].each {|file| require file }
Dir[File.join(__dir__, "site_modules", "*.rb")].each {|file| require file }
