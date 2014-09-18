require 'dm-mysql-adapter'
require 'dm-timestamps'

username = ENV['SCORIA_USERNAME']
password = ENV['SCORIA_PASSWORD']
host     = ENV['SCORIA_HOST']
database = ENV['SCORIA_DATABASE']

DataMapper.setup :default, "mysql://#{username}:#{password}@#{host}/#{database}"

class User
  include DataMapper::Resource
  
end

class Post
  include DataMapper::Resource
  
end

class Comment
  include DataMapper::Resource
  
end

DataMapper.finalize
DataMapper.auto_upgrade!
