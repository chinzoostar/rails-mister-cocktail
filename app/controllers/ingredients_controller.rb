class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show]

  def index
  end

  def show

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end
end
