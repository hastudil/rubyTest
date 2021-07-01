class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  # GET /categories or /categories.json
  def index
    @categories = Category.order(:name)
  end

  # GET /categories/1 or /categories/1.json
  def show
    @keyword = Keyword.new
  end

  # GET /categories/new
  def new
    @category = Category.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories or /categories.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: "Category was successfully created." }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new, status: :unprocessable_entity, notice: "There was an error creating the category." }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1 or /categories/1.json
  def update
    category_name = @category.name
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: "The category \"#{category_name}\"ategory was successfully updated." }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit, status: :unprocessable_entity, notice: "There was an error updating the category." }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    # @keywords = Keyword.where(category_id: params[:id])
    # raise @keywords.to_yaml
    Keyword.destroy_by(category_id: params[:id])#delete_all/destroy_all

    category_name = @category.name

    @category.destroy
    respond_to do |format|
      if @product.destroy
        format.html { redirect_to categories_url, notice: "The category \"#{category_name}\" was successfully destroyed." }
        # format.json { head :no_content }
      else
        format.html { render categories_url, status: :unprocessable_entity, notice: "There was an error deleting the category." }
      end
    end
  end

  private
    def set_category
      @category = Category.find(params[:id])
    end
    
    def category_params
      params.require(:category).permit(:name)
    end
  end
