require 'sinatra/base'
require_relative 'game_engine'
require_relative 'multiplayer_engine'
require_relative 'player'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  set :views, Proc.new {File.join(root, '..', 'views')}
  set :public_dir, Proc.new {File.join(root, '..', 'public')}
  set :public_folder, 'public'

  game = GameEngine.new
  multiplayer_game = MultiplayerEngine.new

  get '/' do
    erb :index
  end

  post '/' do
    @name = params[:name]
    session[:player] = @name
    (params[:opponent] == 'human') ? (redirect '/multiplayer') : (redirect '/play')
  end

  get '/play' do
    @name = session[:player]
    erb :play
  end

  get '/multiplayer' do
    @name = session[:player]
    @multiplayer_game = multiplayer_game
    multiplayer_game.create_player(@name)
    if !multiplayer_game.ready?
      erb :waiting
    else redirect '/multiplayer_page'
    end
  end

  get '/winner' do
    @name = session[:player]
    @input = game.input(params[:choice])
    @winner = game.evaluate_winner.to_sym
    erb :winner
  end

  get '/multiplayer_page' do
    @name = session[:player]
    erb :multiplayer_page
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end