require 'sinatra'
require 'erb'
require 'thin'
require 'sinatra/partial'

configure do
  set :partial_template_engine, :erb
  enable :partial_underscores
end


get "/" do
  # instance vars here for music & videos
  erb :home
end