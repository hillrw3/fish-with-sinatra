require 'sinatra'

class FishApp < Sinatra::Base

  def initialize
    super
    @fish = ["Shark", "Tuna", "Clownfish"]
  end

  get '/' do
    erb :root
  end



end
