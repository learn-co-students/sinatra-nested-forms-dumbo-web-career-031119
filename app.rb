require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      # binding.pry
        @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
        ships = params[:pirate][:ships]
        # binding.pry
        ships.each do |ship|
          Ship.new(ship[:name], ship[:type], ship[:booty])
          # binding.pry
        end
# binding.pry
        erb :'/pirates/show'
    end
  end
end
