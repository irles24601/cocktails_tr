class Cocktail < ApplicationRecord

  belongs_to :user
  has_many :material
  attachment :image

end
