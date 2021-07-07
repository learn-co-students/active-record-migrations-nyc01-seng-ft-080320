#the 'enviornment.rb' file contains files to be read and made available to the ruby application when it runs
require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'


require 'bundler/setup'
Bundler.require


# put the code to connect to the database here
ActiveRecord::Base.establish_connection( #migrations need Active Record to be connected to a database. The #establish_connection method is provided from ActiveRecord::Base, and connects to the 'artists' database, which is then created in the migration via SQLite3 ()
    :adapter => "sqlite3",
    :database => "db/artists.sqlite"
)

require_relative "../artist.rb"
