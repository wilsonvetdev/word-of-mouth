class CollegesController < ApplicationController

    def index 
        #I can try to do if params[:search] nil upon this get request
        #- show nothing at first. 
        @colleges = College.search(params[:search]) 
    end

    def show 
        @colleges = College.find(params[:id])
    end

    private 

    def college_params
        params.require(:college).permit(:name, :city, :state, :search)
    end

end
