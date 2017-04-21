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

  def card_photo?(cocktail)
    if cocktail.photo
      cl_image_path cocktail.photo.path, height: 300, width: 400, crop: :fill
    else
      image_path("https://www.placecage.com/g/300/400")
    end
  end
end
