class Api::MoonsController < ApplicationController
    def index
            @planet = Planet.find(params[:id])
            @moons = @planet.moons
            render :index
    end

    def show
        @moon = Moon.find_by(name: params[:name])
        render :show
    end   
end