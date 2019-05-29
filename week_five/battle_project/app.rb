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

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end