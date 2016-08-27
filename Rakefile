# frozen_string_literal: true
require 'rake/testtask'
require 'rubocop/rake_task'
require 'logger'

RuboCop::RakeTask.new

task default: [:test]

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.ruby_opts = ['-r "./test/test_helper"'] if ENV['COVERAGE']
  t.test_files = FileList['test/**/test_*.rb']
  t.warning = false
  t.verbose = false
end
