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

        return get_posts num_posts
      end
    end

    params do
      requires :email, :type => String, :desc => 'email address'
      requires :first_name, :type => String, :desc => 'first name'
      requires :last_name, :type => String, :desc => 'last name'
      requires :password, :type => String, :desc => 'password'
    end
    post '/create_user' do
      User.create :primary_email => params[:email],
                  :first_name    => params[:first_name],
                  :last_name     => params[:last_name],
                  :password      => params[:password]
    end
  end
end
