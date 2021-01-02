class ReviewsController < ApplicationController

    def index
        if params[:product_id] && @product = Product.find_by_id(params[:product_id])
             @reviews = @product.reviews
        else
            @reviews = Review.all
        end
    end 

    def new
        @review = Review.new
    end 

    def create
        @review = current_user.review.build(review_params)
        if @review.save
         redirect_to @review
         binding.pry
        else 
         render :new
        end 
    end 

    def update
        raise.params.inspect
    end 

    def show
        @review = Review.find_by_id(params[:id])
        @product = Product.find_by_id(params[:id])
    end 

    private
    
    def review_params
        params.require(:review).permit(:title, :rating, :review)
    end

  
end