class TagSuggestionsController < ApplicationController
  include UserConcern
  before_action :authenticate_user!
  before_action :set_tag_suggestion, only: [:show, :edit, :update, :destroy]
  before_action :only_admins, except: [:new]
  

  # GET /tag_suggestions
  # GET /tag_suggestions.json
  def index
    @tag_suggestions = TagSuggestion.all
  end

  # GET /tag_suggestions/1
  # GET /tag_suggestions/1.json
  def show
  end

  # GET /tag_suggestions/new
  def new
    @tag_suggestion = TagSuggestion.new
  end

  # GET /tag_suggestions/1/edit
  def edit
  end

  # POST /tag_suggestions
  # POST /tag_suggestions.json
  def create
    @tag_suggestion = TagSuggestion.new(tag_suggestion_params)

    respond_to do |format|
      if @tag_suggestion.save
        format.html { redirect_to @tag_suggestion, notice: 'Tag suggestion was successfully created.' }
        format.json { render :show, status: :created, location: @tag_suggestion }
      else
        format.html { render :new }
        format.json { render json: @tag_suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_suggestions/1
  # PATCH/PUT /tag_suggestions/1.json
  def update
    respond_to do |format|
      if @tag_suggestion.update(tag_suggestion_params)
        format.html { redirect_to @tag_suggestion, notice: 'Tag suggestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_suggestion }
      else
        format.html { render :edit }
        format.json { render json: @tag_suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_suggestions/1
  # DELETE /tag_suggestions/1.json
  def destroy
    @tag_suggestion.destroy
    respond_to do |format|
      format.html { redirect_to tag_suggestions_url, notice: 'Tag suggestion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_suggestion
      @tag_suggestion = TagSuggestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_suggestion_params
      params.require(:tag_suggestion).permit(:title, :user_id, :product_id)
    end
end
