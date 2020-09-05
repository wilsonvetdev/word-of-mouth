class ProfessorsController < ApplicationController

    def index 
        @professors = Professor.search(params[:search]) 
    end

    def show

    end

    def new
        @professor = Professor.new
    end

    def edit 

    end

    private 

    def professor_params 
        params.require(:professor).permit(:first_name, :last_name, :department, :search)
    end

end
