class ProductsController < ApplicationController

  def index
    @products = Product.all
    render :index
    # Code for listing all products goes here.
  end

  def new
    @product = Product.new
    render :new
    # Code for new product form goes here.
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      binding.pry
      redirect_to products_path
    else
      render :new
    end
    # Code for creating a new product goes here.
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
    # Code for edit product form goes here.
  end

  def show
    @product = Product.find(params[:id])
    render :show
    # Code for showing a single product goes here.
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
    # Code for updating an product goes here.
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
    # Code for deleting an product goes here.
  end

  private
  def product_params
    params.require(:product).permit(:name)
  end
end
