class ProductsController < ApplicationController

    def index
        @products = Product.all
    end 

    def new
        @product = Product.new
    end 

    def create 
    
    end 

    def show
       @product = Product.find_by_id(params[:id])
    end 


    private
    
    def product_params
        params.require(:products).permit(:brand, :name, :product_type)
    end 

end 