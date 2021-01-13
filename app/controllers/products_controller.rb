class ProductsController < ApplicationController

    def index
        @products = Product.alpha
    end 

    def show
       @product = Product.find_by_id(params[:id])
    end 

    def myproducts
        @products = current_user.products
    end 


    private
    
    def product_params
        params.require(:products).permit(:brand, :name, :product_type)
    end 

end 