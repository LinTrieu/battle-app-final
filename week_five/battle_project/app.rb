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

get '/cat' do
  "<div>
  <img src='http://bit.ly/1eze8aE' style='border: 2px dashed red'>
  </div>
  "
end

#  get '/cat' do
#    "<a href='http://bit.ly/1eze8aE'>cat</a>
#   <p style='color:red;'>This is red</p>"
# end

