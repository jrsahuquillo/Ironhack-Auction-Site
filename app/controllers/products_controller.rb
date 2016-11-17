class ProductsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @user_products = @user.products
  end
end
