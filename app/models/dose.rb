class Dose < ApplicationRecord
  CENTILITERS = (1..20).to_a.map { |x| x.to_s + "cl" }
  belongs_to :ingredient
  belongs_to :cocktail
  validates :ingredient, uniqueness: { scope: :cocktail }
end
