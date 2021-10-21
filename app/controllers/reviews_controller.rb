class ReviewsController < ApplicationController

    before_action :redirect_if_not_logged_in
    before_action :redirect_if_not_review_author, only: [:destroy]

   
    def index
        if params[:product_id] && @product = Product.find_by_id(params[:product_id])
            @reviews = @product.reviews
        else
            @reviews = Review.all
        end
    end 

    def new
        @product = Product.find_by_id(params[:product_id])
        @review = Review.new
    end 

    def create
        @review = current_user.reviews.build(review_params)
        @product = Product.find_by_id(params[:product_id])
        @review.product = @product
        binding.pry
        if @review.save
         redirect_to product_reviews_path(@product)
        else 
         render :new
        end 
     end 
          
    def show
        # @review = Review.find(params[:id])
        @product = Product.find(@review.product_id)
    end 

    def destroy 
        if current_user
            Review.find_by_id(params[:id]).destroy
            redirect_to reviews_url
         end 
    end 


    private

    def redirect_if_not_review_author
        redirect_to review_path if @review.user != current_user
    end

   def review_params
        params.require(:review).permit(:title, :rating, :review, :product_id)
    end

  
end