class RoutinesController < ApplicationController
    before_action :redirect_if_not_logged_in

    def index
        @routine = Routine.where(:user_id => current_user.id)
    end 

    def new
        # binding.pry
        @routine = Routine.new
    end 

    def create
       @routine = current_user.routines.build(routine_params)
       if @routine.save
        redirect_to @routine
       else 
        render :new
        binding.pry
       end 
    end 

    def show 
       @routine = Routine.find_by_id(params[:id])
    end

    def edit 
        @routine = Routine.find(params[:id])
    end 

    def update
        raise params.inspect
    end 

    private

    def routine_params
        params.require(:routine).permit(:cleanser,:toner, :moisturizer,:serum,:spf,:time_of_day)
    end 

end 