require 'dm-mysql-adapter'
require 'dm-timestamps'
require 'data_mapper'

username = ENV['SCORIA_USERNAME']
password = ENV['SCORIA_PASSWORD']
host     = ENV['SCORIA_HOST']
database = ENV['SCORIA_DATABASE']

DataMapper.setup :default, "mysql://#{username}:#{password}@#{host}/#{database}"

class User
  include DataMapper::Resource

  property :id, Serial
  property :primary_email, String
  property :first_name, String
  property :last_name, String
  property :password, String
end

class Post
  include DataMapper::Resource

  property :id, Serial
  property :text, String
end

class Comment
  include DataMapper::Resource

  property :id, Serial
end

DataMapper.finalize
DataMapper.auto_upgrade!
