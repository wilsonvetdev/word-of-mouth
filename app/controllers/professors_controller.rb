class ProfessorsController < ApplicationController

    def index 
        @professors = Professor.search(params[:search]) 
    end

    def show
        @professor = Professor.find(params[:id])
        session[:current_professor] = @professor.id
    end

    private 

    def professor_params 
        params.require(:professor).permit(:first_name, :last_name, :department, :search)
    end

end
