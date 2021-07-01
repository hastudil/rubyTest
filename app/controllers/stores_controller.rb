class StoresController < ApplicationController
    before_action :set_store_product_product_id, only: [:edit]
    before_action :set_products, only: [:new, :edit]
    before_action :set_stores, only: [:show, :edit, :update, :destroy]

    #GET /stores
    def index
        @stores = Store.order(:name)
    end

    #GET /stores/:id
    def show
    end

    #GET /stores/new
    def new
        @store = Store.new
        # @products = Product.all

        # @store_product = @store.store_products.build
    end

    #GET /stores/:id/edit
    def edit
    end

    #POST /stores
    def create
        @store = Store.new(store_params)
        # raise @store.to_yaml
        @store.products = params[:products]
        # if @store.save
        #     redirect_to stores_path#@store
        # else
        #     render :new
        # end

        respond_to do |format|
            if @store.save
                format.html { redirect_to stores_path, notice: "The store was successfully created." }
            else
                format.html { render :new, status: :unprocessable_entity, notice: "There was an error creating the store." }
            end
        end
    end
    
    #DELETE /stores/:id
    def destroy
        store_name = @store.name
        StoreProduct.destroy_by(store_id: params[:id])#delete_all/destroy_all
        @store.destroy

        respond_to do |format|
            if @store.destroy
                format.html { redirect_to stores_path, notice: "The store \"#{store_name}\" was successfully deleted." }
                # format.json { render stores_path, status: :ok, location: @store }
            else
                format.html { render stores_path, status: :unprocessable_entity, notice: "There was an error deleting the store." }
            end
        end
    end

    #PUT /stores/:id
    def update
        store_name = @store.name
        @store.products = params[:products]

        respond_to do |format|
            if @store.update(store_params)
                format.html { redirect_to stores_path, notice: "The store \"#{store_name}\" was successfully updated." }
                # redirect_to stores_path#@store
            else
                format.html { render :edit, status: :unprocessable_entity, notice: "There was an error updating the store." }
                # render :edit
            end
        end
    end

    private
    def set_stores
        @store = Store.find(params[:id])
    end

    def set_products
        @products = Product.order(:name)
    end
    
    def set_store_product_product_id
        @store_product = StoreProduct.select(:product_id).where(store_id: params[:id])
    end

    def store_params
        params.require(:store).permit(:name,:street,:number,:zip_code,:city,:country,:products)
    end
end
