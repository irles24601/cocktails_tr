class CocktailsController < ApplicationController
  def new
  end

  def create
  end

  def index
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end
end
