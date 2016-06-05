require 'sinatra'
require 'erb'
require 'thin'
require 'sinatra/partial'
require 'pry'

configure do
  set :partial_template_engine, :erb
  enable :partial_underscores
end


get "/" do
  # instance vars here for music & videos
  @music_tracks = [
    {id: 267210344, title: "Suleika I, Franz Schubert", notes: "", recorded_date: Date.new(2013,10,6)},
    {id: 267210343, title: "Twelve Poems of Emily Dickinson: 9. I Felt a Funeral in my Brain, Aaron Copland", notes: "", recorded_date: Date.new(2013,10,6)},
    {id: 267210342, title: "Duex Poemes de Louis Aragon - C, Francis Poulenc", notes: "", recorded_date: Date.new(2013,10,6)},
    {id: 267210340, title: "In Stiller Nacht, Johannes Brahms", notes: "", recorded_date: Date.new(2011,4,23)}
  ]
  erb :home
end