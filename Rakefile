# -*- coding: utf-8 -*-

def bundle_exec(command)
  sh "bundle exec #{command}"
end

namespace :test do
  desc 'Tests suites runner'

  task :checkstyle do
    Rake::Task['test:rubocop'].invoke
  end

  task :rubocop do
    bundle_exec :rubocop
  end
end

task default: ['test:checkstyle']
