class LogsController < ApplicationController
   before_action :redirect_if_not_logged_in

   def index 
    @logs = Log.where(:user_id => current_user.id)
    @sorted_logs = @logs.order("created_at DESC")
   end

    def new 
        @log = Log.new
    end
    
    def create #post 
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

     def edit #renders the edit form 
        @edit = Log.find_by_id(params[:id])
     end 

     def update #handles actually changing the db
        @log = Log.find_by_id(params[:id])
        @log.update(log_params) 
        redirect_to log_path(@post)
     end 

     def destroy # ask o about delete method 
        if current_user
        Log.find_by_id(params[:id]).destroy
        redirect_to logs_url
        end 
     end 

    private
    
    def log_params
        params.require(:log).permit(:current_condition, :water_level, :hours_slept, :comments)
    end
end 