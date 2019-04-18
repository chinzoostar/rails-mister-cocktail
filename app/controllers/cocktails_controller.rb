class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @ingredients = Ingredient.where(cocktail_id: @cocktail.id)
    @all_ingredients = Ingredient.all
    # @doses = Dose.where(cocktail_id: @cocktail.id)
    # @doses = Ingredient.joins(:doses).where(doses: { cocktail_id: @cocktail.id })
    @doses = Ingredient.joins(:doses).select('ingredients.name,doses.description').where(doses: { cocktail_id: @cocktail.id })
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(set_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def set_params
    params.require(:cocktail).permit(:name)
  end
end
