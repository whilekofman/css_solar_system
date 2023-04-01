class Api::StarsController < ApplicationController
    def index
        @stars = Star.all
        render :index
    end

    def show
        @star = Star.find_by(name: params[:id])
        render :show
    end
end  