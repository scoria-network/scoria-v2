require 'rack/cors'

require './app'
require './api'

use Rack::Cors do
  allow do
    origins '*'
    resource '/api/*'
  end
end

map '/' do
  run SCORIA::Web
end

map '/api' do
  run SCORIA::API
end
