class RoutinesController < ApplicationController

    def new
        # binding.pry
        @routine = Routine.new
    end 

end 