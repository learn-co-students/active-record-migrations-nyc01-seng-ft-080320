require_relative './config/environment.rb'
require 'sinatra/activerecord/rake' #the rake tasts listed in rake -T are made available through this require_relative path

task :console do
  require 'irb'
  ARGV.clear
  IRB.start
end
