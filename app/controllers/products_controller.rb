class ProductsController < ApplicationController

    def index
        @products = Product.all
    end 

    def create 
        
    end 

    def show
       @product = Product.find_by_id(params[:id])
       @review = Review.find_by_id(params[:id])
       @user = User.find_by_id(params[:id])
    end 


    private
    
    def product_params
        params.require(:products).permit(:brand, :name, :product_type)
    end 

end 