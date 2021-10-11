class Api::ProductController < ApplicationController
	skip_before_action :verify_authenticity_token

	def index
		@product = Product.all
		# @product = Product.order(id: :desc)
		# render json: @product
	end

	def new 
		@product = Product.new
	end
  def show
    @product = Product.find(params[:id])
  end
	
	def create
		@product = Product.new(product_params)
		if @product.save
				render json: {status: 'SUCCESS', message:'Product Insert', product:@product},status: :ok
		else
			render json: {status: 'Error', message:@product.errors.full_messages	}
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		render json: {status: 'SUCCESS', message:'Product Deleted ', product:@product},status: :ok
	end

	def update
	  @product = Product.find(params[:id])
    if @product.update(product_params)
      render json: {status: 'SUCCESS', message:'Product Update ', product:@product }, status: :ok
    else
      render json: { status: 'Error', message: @product.errors.full_messages	}
    end
	end

	private

	def product_params
   	params.require(:product).permit(:product_name, :product_price)
  end
end
