require 'sinatra/base'

class SinatraExploreApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index, locals: { user_name: session[:user_name]}
  end

  post '/name' do
    session[:user_name] = params[:user_name]
    redirect '/'
  end
end
