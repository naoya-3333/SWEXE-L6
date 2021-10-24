class CartsController < ApplicationController
  def show
    @cart_item = CartItem.where(cart_id: params[:id])
    @product = Product.all
    @sum = 0
  end
end
