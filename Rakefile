# require 'rake'
# require 'rake/clean'
# require 'rspec/core/rake_task'
# require 'rubocop/rake_task'

# begin
#     require 'bundler/setup'
#     Bundler::GemHelper.install_tasks
# rescue LoadError
#     puts 'although not required, bundler is recommened for running the tests'
# end

# RSpec::Core::RakeTask.new(:spec)

# RuboCop::RakeTask.new do |task|
#     task.requires << 'rubocop-performance'
#     task.requires << 'rubocop-rspec'
#     task.requires << 'rubocop-rake'
# end

# CLOBBER.include(FileList['./*.gem'])

# namespace :lokalise do
#     desc 'Updates RubyGems, installs dependencies'
#     task :install do
#         puts 'Running bundle install'
#         sh 'gem update --system'
#         sh 'bundle'
#     end

#     desc 'Builds the gem'
#     task :build do
#         puts 'Building'
#         sh 'gem build lokalise_rails.gemspec'
#     end
# end

# task rubospec: %w[rubocop spec]

# task full_build: %w[clobber lokalise:install lokalise:build]

# task default: :full_build

require 'rake'

begin
    require 'bundler/setup'
    Bundler::GemHelper.install_tasks
rescue LoadError
    puts 'although not required, bundler is recommended for running the tests'
end

task default: :spec

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'
RuboCop::RakeTask.new do |task|
    task.requires << 'rubocop-performance'
    task.requires << 'rubocop-rspec'
end