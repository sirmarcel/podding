require 'sinatra'
require 'slim'
require 'less'
require 'sinatra/reloader'
require 'yaml'


set :views, '.'
set :public_folder, '.'

helpers do
  def render_episode(name)
  	path = 'episodes/'
  	path << name
  	path << '.yaml'
    lolcals = YAML.load_file(path)
	slim :"includes/_episode", :locals => lolcals
  end
end


get '/' do 
	slim :index
end

get '/test' do
	render_episode("001")
end

get '/style.css' do 
	less :style
end

get '/:name' do |n|
	slim :"#{n}"
end




