# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'yard'

task default: :spec

namespace :utilities do
  YARD::Rake::YardocTask.new
  RSpec::Core::RakeTask.new
  RuboCop::RakeTask.new
end
