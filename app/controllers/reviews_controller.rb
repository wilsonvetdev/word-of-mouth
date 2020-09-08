class ReviewsController < ApplicationController

    def new 
        @review = Review.new
        @current_professor = Professor.find_by(id: session[:current_professor]) # render the current_professor's full_name
        @error = flash[:error]
    end

    def create 
        @review = Review.new(review_params)
        @current_professor = Professor.find_by(id: session[:current_professor])
        @review.user = @current_user
        @review.professor = @current_professor
        if @review.save
            redirect_to professor_path(@current_professor)
        else
            flash[:error] = @review.errors.messages[:professor_id][0]
            redirect_to new_review_path
        end
    end

    private

    def review_params
        params.require(:review).permit(:professor, :user, :rating, :content)
    end
end
