class KeywordsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_category
  before_action :set_keyword, only: [:update, :destroy]
  

  # POST /keywords or /keywords.json
  def create
    @keyword = Keyword.new(keyword_params)
    @keyword.category = @category
    respond_to do |format|
      if @keyword.save
        format.html { redirect_to @keyword.category, notice: "Keyword was successfully created." }
        # format.json { render :show, status: :created, location: @keyword.category }
      else
        format.html { render :new, status: :unprocessable_entity, alert: "You are trying to enter a keyword that already exists." }
        # format.json { render json: @keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keywords/1 or /keywords/1.json
  def update
    # @category = Category.find(params[:category_id])
    # @keyword = Keyword.find(params[:id])

    respond_to do |format|
      if @keyword.update(keyword_params)
        format.html { redirect_to @keyword.category, notice: "Keyword was successfully updated." }
        # format.json { render :show, status: :ok, location: @keyword.category }
      else
        format.html { render :edit, status: :unprocessable_entity, alert: "You are trying to enter a keyword that already exists." }
        # format.json { render json: @keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keywords/1 or /keywords/1.json
  def destroy
    # @category = Category.find(params[:category_id])
    # @keyword = Keyword.find(params[:id])

    title = @keyword.name

    @keyword.destroy

    respond_to do |format|
      if @keyword.destroy
        format.html { redirect_to @keyword.category, notice: "The keyword \"#{title}\" was deleted successfully." }
        format.json { render :show, status: :ok, location: @keyword.category }
      else
        format.html { render :new, status: :unprocessable_entity, alert: "There was an error deleting the keyword." }
        format.json { render json: @keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_category
      @category = Category.find(params[:category_id])
    end
    
    def set_keyword
      @keyword = Keyword.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def keyword_params
      params.require(:keyword).permit(:name)
    end
end
