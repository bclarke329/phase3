class LogsController < ApplicationController
   before_action :redirect_if_not_logged_in

   def index 
    @logs = Log.all
   end

    def new 
        @log = Log.new
    end
    
    def create
        @log = current_user.logs.build(log_params)
        if @log.save
         redirect_to @log
        else 
            render :new
        end 
     end 

     def show
        @log = Log.find_by_id(params[:id])
     end

     def edit 
        @edit = Log.find_by_id(params[:id])
     end 

     def update
        @log = Log.find_by_id(params[:id])
        @log.update(log_params) 
        redirect_to log_path(@post)
     end 

     def destroy
        log = Log.find_by_id(params[:id])
        if current_user
            log.destroy
        end 
     end 

    private
    
    def log_params
        params.require(:log).permit(:current_condition, :water_level, :hours_slept, :comments)
    end
end 