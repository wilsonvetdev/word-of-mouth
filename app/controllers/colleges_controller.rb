class CollegesController < ApplicationController

    def index 
        #I can try to do if params[:search] nil upon this get request
        #- show nothing at first.
        @query = params[:search]
        @colleges = College.search(params[:search]) 
    end

    def show 
        @college = College.find(params[:id])
        @professors = @college.professors
    end

    private 

    def college_params
        params.require(:college).permit(:name, :city, :state, :search)
    end

end
