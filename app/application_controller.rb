require './config/environment'
class ApplicationController < Sinatra::Base
  get "/hi" do
    "awesome!"
  end
end
