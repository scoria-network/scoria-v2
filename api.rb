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
      requires :cpassword, :type => String, :desc => 'password confirmation'
    end
    post '/create_user' do
      create_user params[:email],
                  params[:first_name],
                  params[:last_name],
                  params[:password],
                  params[:cpassword]
    end

    params do
      requires :email, :type => String, :desc => 'email address'
      requires :password, :type => String, :desc => 'password'
    end
    post '/log_in' do
      log_in params[:email], params[:password]
    end
  end
end
