class UsersController < ApplicationController
    
    def new
        @user = User.new
        authorize @user
    end
    
    def create
        @user = User.new(user_params)
        authorize @user
        if @user.save
            redirect_to posts_path
        else
            render 'new'
        end
    end
    
    private
    
    def user_params
        params.require(:user).permit(:signin_name, :display_name, :password, :password_confirmation)
    end
end
