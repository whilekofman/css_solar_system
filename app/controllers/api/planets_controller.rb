class Api::PlanetsController < ApplicationController
    def index
        @planets = Planet.all
        render :index
    end
  
    def show
      @planet = Planet.find_by(name: params[:name])
      render :show
    end   
end