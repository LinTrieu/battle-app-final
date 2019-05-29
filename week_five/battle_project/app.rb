require 'sinatra'

get '/hello' do
  "Hello, World!"
end

get '/secret' do
  "Secret page"
end

get '/homepage' do
  "Makers Academy: Week 5 - Intro to Web"
end

get '/contact' do
  "Contact Us"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb(:index)
end