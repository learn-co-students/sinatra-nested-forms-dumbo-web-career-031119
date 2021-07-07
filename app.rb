require './environment'

module FormsLab
  class App < Sinatra::Base

    get ('/')  {
    	erb :root
    }

    get ('/new') {
    	erb '/pirates/new'.to_sym
    }

    post ('/pirates') {
    	# binding.pry
    	@pirate = Pirate.new(params[:pirate][:name],params[:pirate][:weight],params[:pirate][:height])
    	@shipone = Ship.new(params[:pirate][:ships][0][:name], params[:pirate][:ships][0][:type], params[:pirate][:ships][0][:booty])
    	@shiptwo = Ship.new(params[:pirate][:ships][1][:name], params[:pirate][:ships][1][:type], params[:pirate][:ships][1][:booty])

    	erb :"/pirates/show"
    }

  end
end
