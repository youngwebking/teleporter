class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    
    respond_to do |format|
      format.html # index.html.erb
      format.json  { render :json => @product }
    end
  end

  def new
    @product = Product.new
  end
  
  def create
    #@product = Product.newmod(params.require(:product).permit('attr:name','attr:price','img:picture', 'file:description'))
    @product = Product.new(params.require(:product).permit(:name, :price, :image, :description, :gcode))
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def edit
  end
  
  def update
  end
  
  def destroy
  end
end
 
