require 'bundler'
Bundler::GemHelper.install_tasks

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "geokit-rails3 #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

load 'test/tasks.rake'

desc 'Default: run unit tests.'
task :default => :test