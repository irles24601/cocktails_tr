class Cocktail < ApplicationRecord

  belongs_to :user
  attachment :image

end
