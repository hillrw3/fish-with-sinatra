require 'sinatra'

class FishApp < Sinatra::Base

  get '/' do
    erb :root
  end

  

end
