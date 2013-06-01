require "bundler"
require 'rspec/core/rake_task'


desc 'see which ones actually work specs'
RSpec::Core::RakeTask.new "spec"

desc "Run benchmarks"
task :benchmarks do |t,args|
  sh "ruby -I lib benchmarks/benchmark.rb"
end

task :default => [:spec]
