class ReviewsController < ApplicationController

    def new 
        @review = Review.new
        @current_professor = Professor.find_by(id: session[:current_professor])
    end

    def create 
        @review = Review.new(review_params)
        @current_professor = Professor.find_by(id: session[:current_professor])
        @review.user = @current_user
        @review.professor = @current_professor
        if @review.save
            redirect_to professor_path(@current_professor)
        else
            redirect_to new_review_path
        end
    end

    private

    def review_params
        params.require(:review).permit(:professor, :user, :rating, :content)
    end
end
