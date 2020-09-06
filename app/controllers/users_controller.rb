class UsersController < ApplicationController

    def login
        @error = flash[:error]
    end

    def handle_login
        @user = User.find_by(username: params[:username])
        # Getting params[:username] value from the user get request
        # Handle the request by finding the user in database first, username is unique**
        # if user exist(truthy) and password pass authentication
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:error] = "Incorrect username or password!"
            redirect_to login_path
        end
    end

    def logout
        byebug
    end

    def index 
    end

    def show
    end

    def new 
        @user = User.new
    end

    def create 
        @user = User.create(user_params)
        if @user.valid?
            redirect_to user_path(@user)
        else 
            redirect_to new_user_path
        end
    end

    private 

    def user_params 
        params.require(:user).permit(:username, :password)
    end
end
