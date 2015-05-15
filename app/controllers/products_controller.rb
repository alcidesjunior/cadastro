class ProductsController < ApplicationController
	def new
		@product = Product.new
	end
	def edit
		@product = Product.find(params[:id])
	end
	def create
		@product = Product.new(product_params)
		if @product.save(product_params)
			redirect_to @product
		else
			render 'new'
		end
	end
	def show
		@product = Product.find(params[:id])
	end
	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			redirect_to @product
		else
			render 'edit'
		end
	end
	def index
		@products = Product.all
	end
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to @product
	end
private
	def product_params
		params.require(:product).permit(:produto,:valor)
	end
end
