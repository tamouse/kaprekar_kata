require "bundler"
require 'rake/clean'
require 'rspec/core/rake_task'

Bundler::GemHelper.install_tasks

RSpec::Core::RakeTask.new("spec") do |t|
end

desc "Run benchmarks"
task :benchmarks do |t,args|
  sh "ruby benchmarks/benchmark.rb"
end

task :default => [:spec]
