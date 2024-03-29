class UsersController < ApplicationController
    before_action :redirect_if_not_logged_in, except: [:new, :create]

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
        @user = User.find_by_id(params[:id])
        @routine = Routine.order("created_at").last
        @log = Log.order("created_at").last
    end

    private 
    
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end 
end