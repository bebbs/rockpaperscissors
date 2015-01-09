require 'sinatra/base'
require_relative 'game_engine'
require_relative 'player'

class RockPaperScissors < Sinatra::Base

  set :views, Proc.new {File.join(root, '..', 'views')}
  enable :sessions

  game = GameEngine.new

  get '/' do
    session[:player] ? @player = session[:player] : nil
    erb :index
  end

  post '/register' do
    @player = Player.new(params[:name])
    session[:player] = @player
    redirect('/')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
