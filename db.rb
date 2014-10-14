require 'dm-mysql-adapter'
require 'dm-timestamps'
require 'data_mapper'
require 'yaml'

config = YAML.load_file('db_config.yml')

username = config['username']
password = config['password']
host     = config['host']
database = config['database']

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
