class DosesController < ApplicationController
  def new
  end

  def create
    @dose = Dose.new(set_params)
    @dose.cocktail_id = params[:cocktail_id]
    @dose.ingredient_id = params[:dose][:ingredient_id]

    @dose.save

    redirect_to cocktail_path(@dose.cocktail_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def set_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
