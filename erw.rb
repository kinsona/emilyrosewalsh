require 'sinatra'
require 'erb'
require 'thin'


get "/" do
  # instance vars here for music & videos
  erb :home
end