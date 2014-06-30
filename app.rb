require 'sinatra'

class FishApp < Sinatra::Base

  def initialize
    super
    @fish = [{name: "Shark", water_type: "Salt", image: "http://www.kidzone.ws/images-changed/sharks/greatwhite1.jpg", description: "Large predator with big teeth"},
             {name: "Tuna", water_type: "Salt", image: "http://www.sophistimom.com/wp-content/uploads/2009/02/ahi-tuna-steak-1-150x150.jpg", description: "Tasty when seared"},
             {name: "Clownfish", water_type: "Salt", image: "http://fc07.deviantart.net/fs70/f/2012/035/c/d/clownfish_by_artbit-d4omnrm.png", description: "Nemo"}]
  end

  get '/' do
    erb :root
  end

  get '/fish/:index'do
    id = params[:index].to_i
    @specific_fish = @fish[id]
    erb :fish
  end

  get '/newfish' do
    erb :new_fish
  end

  get '/find_fish' do
    fish_name = params[:search]
    all_fish_names = @fish.each do |fish|
      fish[:name]
    end
    if all_fish_names.include?(fish_name)
      
    end
  end

  post '/create_new_fish' do
    name = params[:name]
    watertype = params[:watertype]
    description = params[:description]
    imageurl = params[:imageurl]
    @fish << {name: name, water_type: watertype, image: imageurl, description: description}
    redirect("/fish/#{@fish.size-1}")
  end

end
