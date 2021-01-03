class ReviewsController < ApplicationController

    def index
        if params[:product_id] && @product = Product.find_by_id(params[:product_id])
             @reviews = @product.reviews
        else
            @reviews = Review.all
        end
    end 

    def new
        if params[:product_id] && @product = Product.find_by_id(params[:product_id]) #if its nested & product is found 
        @review = @product.reviews.build
        else
         @review = Review.new
        end 
    end 

    def create
        @review = current_user.review.build(review_params)
        if @review.save
         redirect_to reviews_path
        else 
         render :new
        end 
    end 

    def show
        @review = Review.find_by_id(params[:id])
        @product = Product.find_by_id(params[:id])
    end 

    def destroy
      
    end

    private
    
    def review_params
        params.require(:review).permit(:title, :rating, :review, :product_id)
    end

  
end