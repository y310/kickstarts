require 'bundler/setup'
require 'sinatra'
require 'haml'
require 'sass'
require 'barista'

class Application < Sinatra::Base
  register Barista::Integration::Sinatra
end

get '/' do
  haml :index
end

get '/style.css' do
  scss :style
end
