require 'sinatra'
require 'slim'
require 'less'
require 'sinatra/reloader'


set :views, '.'
set :public_folder, '.'


get '/' do 
	slim :index
end

get '/style.css' do 
	less :style
end

