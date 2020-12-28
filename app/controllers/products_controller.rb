class ProductsController < ApplicationController

    def index
        @products = Product.all
    end 

    def new
        @product = Product.new
    end 

    def create 
     
        binding.pry
    end 

    def show
        @product = Product.find(params[:id])
    end 


    private
    
    def product_params
        params.require(:products).permit(:brand, :name, :product_type)
    end 

end 