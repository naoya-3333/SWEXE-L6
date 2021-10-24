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
      flash[:success] = "カートに商品を追加しました"
      redirect_to cart_path(current_cart.id)
    else
      redirect_to cart_path(current_cart.id)
    end
  end
  
  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    flash[:success] ="商品を削除しました"
    redirect_to cart_path(current_cart.id)
  end
end
