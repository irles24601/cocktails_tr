class CocktailsController < ApplicationController
  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.user_id = current_user.id
    @cocktail.save
    redirect_to cocktails_path
  end

  def index
    @cocktails = Cocktail.all
    @cocktail = Cocktail.find(params[:id])
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:cocktail_name, :image, :cocktail_material, :alcohol, :user_id)
  end
end
