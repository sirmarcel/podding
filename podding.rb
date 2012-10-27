# encoding: UTF-8

require 'sinatra'
require 'slim'
require 'less'
require 'sinatra/reloader'
require 'yaml'

settings.default_encoding = 'UTF-8'
set :views, '.'
set :public_folder, '.'

helpers do
  def render_episode(name)
  	path = 'episodes/'
  	path << name
  	path << '.yaml'
    file = File.read(path).force_encoding('UTF-8')
    lolcals = YAML.load(file)
	  slim :"includes/_episode", :locals => lolcals
  end
  def render_markdown(name)
    path = name
    path << '.markdown'
    file = File.read(path).force_encoding('UTF-8')
    markdown file
  end
end


get '/' do 
  slim :index
end

get '/test' do
	slim :test
end

get '/style.css' do 
	less :style
end

get '/:name' do |n|
	slim :"#{n}"
end




