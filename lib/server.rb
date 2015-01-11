require 'sinatra/base'
require_relative 'game_engine'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  set :views, Proc.new {File.join(root, '..', 'views')}

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
    game.input(params[:choice])
    @winner = game.evaluate_rock.to_s
    erb :winner
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end