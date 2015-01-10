require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  set :views, Proc.new {File.join(root, '..', 'views')}

  get '/' do
    erb :index
  end

  post '/' do
    @name = params[:name]
    session[:player] = @name
    erb :index
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end