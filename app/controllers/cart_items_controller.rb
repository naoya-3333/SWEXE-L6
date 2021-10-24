class CartItemsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @cartitem = CartItem.new
  end
  
  def create 
    @cartitem = CartItem.create(product_id: params[:cart_item][:product_id], 
    cart_id: current_cart.id ,
    qty: params[:cart_item][:qty])
    
    if @cartitem.save
      redirect_to root_path
    else
      render 'new'
    end
  end
end
