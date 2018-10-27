# frozen_string_literal: true

require "rubygems"
require "bundler"
Bundler.require(:default, ENV["RACK_ENV"] || :development)

Dir[File.join(__dir__, "..", "lib", "*.rb")].each {|file| require file }
