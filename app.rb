require './environment'

module FormsLab
  class App < Sinatra::Base
    set :views, "views/pirates"

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate_results = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      @ship_results_1 = Ship.new(params[:pirate][:ships][0][:name], params[:pirate][:ships][0][:type], params[:pirate][:ships][0][:booty])
      @ship_results_2 = Ship.new(params[:pirate][:ships][1][:name], params[:pirate][:ships][1][:type], params[:pirate][:ships][1][:booty])
      erb :show
    end

  end
end
