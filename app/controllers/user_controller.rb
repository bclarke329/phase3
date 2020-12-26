class UserController < ApplicationController

    def new
        @user = User.new
    end 

    def create
        @user = User.new(user_params)
        if @user.save
        session[:user_id] = @user.id
        redirect_to @user
        else
            render 'new'
        end 
    end

    def show
        @user = User.find(params[:id])
        #need rescue page cause this will berak if it can't find the user_id. redirect back to home page
    end

    private 
    
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end 
end