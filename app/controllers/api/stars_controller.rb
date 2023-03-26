class Api::StarsController < ApplicationController
    def show
        @star = Star.find_by(name: "Sun")
        render :show
    end
end  