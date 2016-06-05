require 'sinatra'
require 'erb'
require 'thin'
require 'sinatra/partial'


configure do
  set :partial_template_engine, :erb
  enable :partial_underscores
end


get "/" do
  @music_tracks = [
    {id: 267714242, title: "The Queen's Epicedium, Henry Purcell", notes: "", recorded_date: Date.new(2015,3,16)},
    {id: 267714241, title: "On This Island - Seascape, Benjamin Britten", notes: "", recorded_date: Date.new(2015,3,16)},
    {id: 267714239, title: "Nachtstuck, Franz Schubert", notes: "", recorded_date: Date.new(2015,3,16)},
    {id: 267714238, title: "Quatre Chansons de Ronsard - A Cupidon, Darius Milhaud", notes: "", recorded_date: Date.new(2015,3,16)},
    {id: 267210344, title: "Suleika I, Franz Schubert", notes: "", recorded_date: Date.new(2013,10,6)},
    {id: 267210343, title: "Twelve Poems of Emily Dickinson: 9. I Felt a Funeral in my Brain, Aaron Copland", notes: "", recorded_date: Date.new(2013,10,6)},
    {id: 267210342, title: "Duex Poemes de Louis Aragon - C, Francis Poulenc", notes: "", recorded_date: Date.new(2013,10,6)},
    {id: 267210340, title: "In Stiller Nacht, Johannes Brahms", notes: "", recorded_date: Date.new(2011,4,23)}
  ]

  @videos = [
    {id: "jQMrRBnZYlE", title: "Fly Duet from Orphée aux Enfers (Offenbach)", notes: ""},
    {id: "fIEnps5LIMk", title: "Valse Tyrolienne (Offenbach)", notes: ""},
    {id: "viM03Q4J04k", title: "C (Poulenc)", notes: ""},
    {id: "0mutWhcCo0c", title: "Apparition (Debussy)", notes: ""},
    {id: "iPZ3lV88iRQ", title: "Soleil, fuis de ces lieux (Rameau)", notes: ""},
    {id: "nfqpNO-icJw", title: "Le Papillon et La Fleur (Fauré)", notes: ""}
  ]

  erb :home
end