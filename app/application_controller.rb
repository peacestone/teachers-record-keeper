require_relative '../config/environment.rb'

class ApplicationController < Sinatra::Base
  get "/hi" do
    "The bomb!"
  end
end
