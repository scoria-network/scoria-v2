require 'rack/cors'

require './app'
require './api'

enable :sessions

use Rack::Cors do
  allow do
    origins '*'
    resource '/api/*'
  end
end

map '/' do
  run Scoria::Web
end

map '/api' do
  run Scoria::API
end
