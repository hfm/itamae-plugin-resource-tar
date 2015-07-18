require "bundler/gem_tasks"
require 'rake/testtask'

desc 'Run tests'
Rake::TestTask.new do |t|
  # To run test for only one file (or file path pattern)
  #  $ bundle exec rake test TEST=test/test_specified_path.rb
  t.libs << "test"
  t.test_files = Dir["test/**/*_test.rb"]
  t.verbose = true
end
