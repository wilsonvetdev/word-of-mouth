class CollegesController < ApplicationController
    
    skip_before_action :authorized_access, only: [:index, :show]

    def index 
        @query = params[:search] # @query used in views as well
        @colleges = College.search(@query)  # logic in model
        @current_user = User.find_by(id: session[:user_id])
        @most_popular_by_professor_count = College.most_popular_by_professor_count
    end

    def show 
        @college = College.find(params[:id])
        @professors = @college.professors
        @current_user = User.find_by(id: session[:user_id])
        session[:current_college] = @college.id # being used at workplaces controller
        @success = flash[:success]
    end

    private 

    def college_params
        params.require(:college).permit(:name, :city, :state, :search)
    end

end
