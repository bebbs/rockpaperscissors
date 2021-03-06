require 'sinatra/base'
require_relative 'game_engine'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  set :views, Proc.new {File.join(root, '..', 'views')}
  set :public_dir, Proc.new {File.join(root, '..', 'public')}
  set :public_folder, 'public'

  game = GameEngine.new

  get '/' do
    erb :index
  end

  post '/' do
    @name = params[:name]
    session[:player] = @name
    redirect '/play'
  end

  get '/play' do
    @name = session[:player]
    erb :play
  end

  get '/winner' do
    @name = session[:player]
    @input = game.input(params[:choice])
    @winner = game.evaluate_winner.to_sym
    @winner == :player ? game.player_score += 1 : game.computer_score += 1
    puts "Player Score equals #{game.player_score}"
    puts "Comp score equals #{game.computer_score}"
    erb :winner
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end