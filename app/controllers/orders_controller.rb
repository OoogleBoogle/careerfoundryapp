class OrdersController < ApplicationController
	before_filter :authenticate_user!
	load_and_authorize_resource

	def index
	end

	def show
		@user = User.find(params[:id])
		@orders = @user.orders
	end

	def new
	end

	def create
		@product = Product.find(params[:product_id])
		@user = current_user
		@order = Order.new(:product_id => @product.id, :user_id => @user.id)

		if @order.save
			redirect_to products_path
		else
			redirect_to static_pages_index_path
		end
	end

	private
		# def order_params
		# 	params.require(:orders).permit(:user_id, :product_id)
		# end
end