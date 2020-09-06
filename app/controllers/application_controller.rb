class ApplicationController < ActionController::Base

    before_action :set_current_user 
    helper_method :user_logged_in?

    def set_current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def user_logged_in?
        !set_current_user.nil?
    end

end
