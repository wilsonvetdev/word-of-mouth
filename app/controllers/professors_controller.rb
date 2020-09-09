class ProfessorsController < ApplicationController

    def index 
        @professors = Professor.search(params[:search]) 
    end

    def show
        @professor = Professor.find(params[:id])
        session[:current_professor] = @professor.id
        @success = flash[:success]
    end

    private 

    def professor_params 
        params.require(:professor).permit(:first_name, :last_name, :search)
    end

end
