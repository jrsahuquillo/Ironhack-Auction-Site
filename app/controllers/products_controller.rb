class ProductsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @user_products = @user.products
  end

  def new
    @user = User.find(params[:user_id])
    @user_product = @user.products.new
  end

  def create
    @user = User.find(params[:user_id])
        @user_product = @user.products.new(title: params[:product][:title],
                                description: params[:product][:description],
                                deadline: params[:product][:deadline])

        if @user_product.save
          redirect_to "/users/#{@user.id}/products"
        else
          render "new"
        end
  end
end
