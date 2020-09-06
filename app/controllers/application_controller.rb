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
        redirect_to login_path unless user_logged_in?
    end

end
