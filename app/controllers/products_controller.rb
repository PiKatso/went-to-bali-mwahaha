class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params.fetch(:id))
    respond_to do |format|
      format.html { redirect_to product_path(@product) }
      format.js
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully saved"
      redirect_to '/'
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated"
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:notice] = "Product successfully removed"
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
