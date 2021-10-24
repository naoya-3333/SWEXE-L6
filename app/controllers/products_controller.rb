class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.create(name: params[:product][:name],
    price: params[:product][:price])
    
    if @product.save
      flash[:success] = "商品を登録しました"
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:success] ="商品を削除しました"
    redirect_to root_path
  end
end
