require_relative '../config/environment.rb'
      
class ApplicationController < Sinatra::Base
  get "/hi" do
    "awesome!"
  end
end
