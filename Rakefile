begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

Bundler::GemHelper.install_tasks

require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'spec'
  t.pattern = 'spec/**/*_spec.rb'
  t.verbose = true
end


# Various tasks

namespace :deploy do
  desc 'Merge back into master, bump version and push'
  task :gh do
    sh 'git add .'
    sh 'git commit -am "Deploying to master"'
    sh 'git checkout master'
    sh 'git merge develop'
    sh 'git push --all'
    sh 'git checkout develop'
  end

  desc 'Deploy Gem to RubyGems'
  task :gem do
    # TODO add bundler gem deploy options
  end
end

task default: :test
