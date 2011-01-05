# -*- encoding: utf-8 -*-
require File.expand_path("../lib/geokit-rails3/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "geokit-rails3"
  s.version     = GeokitRails3::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andre Lewis", "Bill Eisenhauer", "Jeremy Lecour", "Kristian Mandrup"]
  s.email       = ["andre@earthcode.com", "bill_eisenhauer@yahoo.com", "jeremy.lecour@gmail.com", "kmandrup@gmail.com"]
  s.homepage    = "http://github.com/jlecour/geokit-rails3"
  s.summary     = "Integrate Geokit with Rails 3 for Mongoid"
  s.description = "Port of the Rails plugin \"geokit-rails\" to Rails 3, as a gem"

  s.required_rubygems_version = ">= 1.3.6"
  # s.rubyforge_project         = "test_gem"

  s.add_runtime_dependency 'rails', '~> 3.0.0'
  s.add_runtime_dependency 'geokit', '~> 1.5.0'

  s.add_development_dependency "bundler", "~> 1.0.0"
  s.add_development_dependency "rcov", "~> 0.9.9"
  s.add_development_dependency "mocha", "~> 0.9.8"

  s.files        = Dir.glob("lib/**/*.rb")
  s.test_files   = Dir.glob("test/**/*")
  s.require_path = "lib"
end
