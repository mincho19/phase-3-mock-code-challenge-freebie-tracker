require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a Pry console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)

  c = Company.first
  f = Freebie.first
  d = Dev.first

  binding.pry
end
