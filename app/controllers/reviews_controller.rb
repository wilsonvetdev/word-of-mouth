class ReviewsController < ApplicationController

    def new 
        @review = Review.new
        @current_professor = Professor.find_by(id: session[:current_professor]) # render the current_professor's full_name
        #session[:current_professor] coming from professor show action
        @error = flash[:error]
    end

    def create 
        @review = Review.new
        @current_professor = Professor.find_by(id: session[:current_professor])
        #session[:current_professor] coming from professor show action
        params[:review][:user_id] = @current_user.id
        params[:review][:professor_id] = @current_professor.id
        #please refer to workplace controller create action for my reasoning of above code.
        @review = Review.create(review_params)
        if @review.valid?
            flash[:success] = "Review successfully added!"
            redirect_to professor_path(@current_professor)
        else
            flash[:error] = @review.errors.messages[:professor_id][0]
            redirect_to new_review_path
        end
    end

    def show 
    end

    def edit
        @review = Review.find_by(id: params[:id])
        @professor = @review.professor
    end

    def update
        @review = Review.find_by(id: params[:id])
        @review.update(review_params)
        flash[:edit_success] = "Your update to the review of #{@review.professor.full_name} was successful!"
        redirect_to user_path(@current_user)
    end

    def destroy
        @review = Review.find_by(id: params[:id])
        @review.destroy
        flash[:delete_success] = "You succesfully deleted a review for #{@review.professor.full_name}!"
        redirect_to user_path(@current_user)
    end

    private

    def review_params
        params.require(:review).permit(:professor_id, :user_id, :rating, :content)
    end

end
