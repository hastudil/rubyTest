class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_store_product_store_id, only: [:edit]

  # GET /products or /products.json
  def index
    @products = Product.order(:name)
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    @stores = Store.order(:name)
    
    # @store_product = @product.store_products.build
  end

  # GET /products/1/edit
  def edit
    @categories = Category.order(:name)
    @stores = Store.order(:name)

    # category_id = @Product.category_id
    # @category_name = Category.find(category_id)
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)
    @product.stores = params[:stores]

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: "Product was successfully created." }
        format.json { render :new, status: :created, location: products_path }
      else
        format.html { render :new, status: :unprocessable_entity, alert: "There was an error creating the product." }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    product_name = @product.name
    @product.stores = params[:stores]

    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_path, notice: "The product \"#{product_name}\" was successfully updated." }
        # format.json { render :edit, status: :ok, location: products_path }
      else
        format.html { render :edit, status: :unprocessable_entity, notice: "There was an error updating the product." }
        # format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    product_name = @product.name
    StoreProduct.destroy_by(product_id: params[:id])#delete_all/destroy_all
    @product.destroy
    respond_to do |format|
      if @product.destroy
        format.html { redirect_to products_url, notice: "The store \"#{product_name}\" was successfully deleted." }
      else
        format.html { render stores_path, status: :unprocessable_entity, notice: "There was an error deleting the product." }
      end
    end
  end

  private
  def set_store_product_store_id
      @store_product = StoreProduct.select(:store_id).where(product_id: params[:id])
  end

    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :color, :category_id, :size, :price, :stores)
    end
end
