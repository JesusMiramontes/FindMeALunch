class PriceSuggestionsController < ApplicationController
  include UserConcern
  before_action :set_price_suggestion, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :only_admins, except: [:new]
  
  # GET /price_suggestions
  # GET /price_suggestions.json
  def index
    @price_suggestions = PriceSuggestion.all
  end

  # GET /price_suggestions/1
  # GET /price_suggestions/1.json
  def show
  end

  # GET /price_suggestions/new
  def new
    @price_suggestion = PriceSuggestion.new
  end

  # GET /price_suggestions/1/edit
  def edit
  end

  # POST /price_suggestions
  # POST /price_suggestions.json
  def create
    @price_suggestion = PriceSuggestion.new(price_suggestion_params)

    respond_to do |format|
      if @price_suggestion.save
        format.html { redirect_to @price_suggestion, notice: 'Price suggestion was successfully created.' }
        format.json { render :show, status: :created, location: @price_suggestion }
      else
        format.html { render :new }
        format.json { render json: @price_suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_suggestions/1
  # PATCH/PUT /price_suggestions/1.json
  def update
    respond_to do |format|
      if @price_suggestion.update(price_suggestion_params)
        format.html { redirect_to @price_suggestion, notice: 'Price suggestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @price_suggestion }
      else
        format.html { render :edit }
        format.json { render json: @price_suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_suggestions/1
  # DELETE /price_suggestions/1.json
  def destroy
    @price_suggestion.destroy
    respond_to do |format|
      format.html { redirect_to price_suggestions_url, notice: 'Price suggestion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_suggestion
      @price_suggestion = PriceSuggestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_suggestion_params
      params.require(:price_suggestion).permit(:user_id, :product_id, :price)
    end
end
