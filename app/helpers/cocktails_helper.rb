module CocktailsHelper
  def three_doses(cocktail)
    cocktail.doses.all.first(3)
  end

  def only_three(cocktail)
    if cocktail.doses.all.first(3).count < cocktail.doses.all.count
      return "..."
    end
  end

  def doses?(cocktail)
    cocktail.doses.all.first
  end
end
