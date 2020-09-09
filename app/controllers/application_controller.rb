class ApplicationController < ActionController::Base

    before_action :authorized_access
    helper_method :user_logged_in?

    def set_current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def user_logged_in?
        !set_current_user.nil?
    end

    def authorized_access
        unless user_logged_in?
            flash[:error] = "You must be logged in to access the previous section."
            redirect_to login_path 
        end
    end

end
