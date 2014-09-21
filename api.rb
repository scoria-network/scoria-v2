require 'grape'
require './db'
require './helpers'

class Scoria
  class API < Grape::API
    format :json

    params do
      requires :key, :type => String, :desc => 'URL key'
    end
    group do
      get '/create_post' do
        text = params[:key]
        Post.create :text => text
        return { :hello => :planet }
      end

      get '/get_posts' do
        num_posts = params[:key].to_i

        return Post[-num_posts..-1]
      end

      get '/test' do
        return "test"
      end
    end
  end
end
