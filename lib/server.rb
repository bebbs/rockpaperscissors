require 'sinatra/base'
require_relative 'game_engine'
require_relative 'player'

class RockPaperScissors < Sinatra::Base
  get '/' do
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
