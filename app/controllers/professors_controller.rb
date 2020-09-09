class ProfessorsController < ApplicationController

    def index 
        @query = params[:search] # @query used in views as well
        @professors = Professor.search(@query) # logic in model
        @most_reviewed_three = Professor.most_reviewed_three
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
