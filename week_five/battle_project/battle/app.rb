require 'sinatra/base'

  class Battle < Sinatra::Base

    get "/" do
      erb(:index)
    end

    post "/names" do
      @player_one_name = params[:player_one]
      @player_two_name = params[:player_two]
      erb(:play)
    end

    run! if app_file == $0
  end
