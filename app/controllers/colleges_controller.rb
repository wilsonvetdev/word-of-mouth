class CollegesController < ApplicationController

    def index 
        @query = params[:search]
        @colleges = College.search(params[:search])  # logic in model
    end

    def show 
        @college = College.find(params[:id])
        @professors = @college.professors
        session[:current_college] = @college.id # being used at workplaces controller
        @success = flash[:success]
    end

    private 

    def college_params
        params.require(:college).permit(:name, :city, :state, :search)
    end

end
