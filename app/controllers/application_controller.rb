require_relative '../../config/environment.rb'
require "pry"
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "dragon ball"
  end

  get "/" do
    erb :"index"
  end

  post "/login" do

    @teacher = Teacher.find_by(username: params[:username])
    if @teacher && @teacher.authenticate(params[:password])
      session[:id] = @teacher.id
      redirect "/subjects"
    else
      redirect "/"
    end
  end

  get "/signup" do
    erb :signup
  end

  post "/signup" do
    if !params[:name].empty? && !params[:username].empty? && !params[:email].empty? && !params[:password].empty?
      @teacher = Teacher.create(params)
      redirect "/subjects"
    else
      redirect "/signup"
    end
  end

end
