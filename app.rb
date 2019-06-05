require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $player_one = Player.new(params['player_one']
    $player_two = Player.new(params['player_two'])
    redirect '/play'
  end

  get "/play" do
    @player_one_name = $player_one.name
    @player_two_name = $player_two.name
    erb(:play)
  end

  get '/attack' do
    @player_one_name = $player_one.name
    @player_two_name = $player_one.name
    erb(:attack)
  end

  run! if app_file == $0
end
