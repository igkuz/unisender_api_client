#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/lib/**/*_test.rb']
  t.verbose = true
end

desc "Running tests"
task defaul: :test
