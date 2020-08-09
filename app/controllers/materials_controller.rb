class MaterialsController < ApplicationController
  def new
    @material = Material.new
  end
  
  def create
    @material = Material.new(material_params)
    @material.cocktail_id = @cocktail.id
    @material.save
    redirect_to new_cocktail_path
  end

  private
  def material_params
    params.require(:material).permit(:name, :cocktail_id)
  end
end
