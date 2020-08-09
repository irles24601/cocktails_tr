class Cocktail < ApplicationRecord

  belongs_to :user
  has_many :materials
  attachment :image

end
