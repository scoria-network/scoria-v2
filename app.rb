require 'sinatra'
require './db'
require './helpers'

class Scoria
  class Web < Sinatra::Base
    get '/' do
      erb :index
    end
  end
end
