require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    session[:player_one] = params['player_one']
    session[:player_two] = params['player_two']
    redirect '/play'
  end

  get "/play" do
    @player_one_name = session[:player_one]
    @player_two_name = session[:player_two]
    erb(:play)
  end

  get "/hit-points" do
    erb(:points)
  end

  run! if app_file == $0
end
