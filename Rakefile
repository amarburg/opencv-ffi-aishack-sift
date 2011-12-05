require "bundler/gem_tasks"
require 'rake/testtask'
require 'rake/clean'

# Monkeypatch my preferred behavior into mkrf
require "./ext/mkrf-rakehelper-monkey"

setup_extension "aishack-sift", "libcvffi_aishack_sift"

Rake::TestTask.new(:test) do |t|
  t.libs << '.'
  t.verbose = true
  t.test_files = FileList['test/test_*.rb']
end

CLEAN.include "lib/*.so"
  
task :default => 'test'

task :test => Mkrf::all_libs

