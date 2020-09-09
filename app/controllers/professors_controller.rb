class ProfessorsController < ApplicationController

    skip_before_action :authorized_access, only: [:index, :show]

    def index 
        @query = params[:search] # @query used in views as well
        @professors = Professor.search(@query) # logic in model
        @most_reviewed_three = Professor.most_reviewed_three
        @current_user = User.find_by(id: session[:user_id])
    end

    def show
        @professor = Professor.find(params[:id])
        session[:current_professor] = @professor.id
        @success = flash[:success]
        @current_user = User.find_by(id: session[:user_id])
    end

    private 

    def professor_params 
        params.require(:professor).permit(:first_name, :last_name, :search)
    end

end
