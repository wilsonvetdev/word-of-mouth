class CollegesController < ApplicationController

    def index 
        @query = params[:search] # @query used in views as well
        @colleges = College.search(@query)  # logic in model
        @most_popular_by_professor_count = College.most_popular_by_professor_count
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
