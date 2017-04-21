# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Starting the seed..."

cocktail_json = open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read

ingredients_list = JSON.parse(cocktail_json)

puts "Parsed the ingredients"

array_of_ingredients = []
ingredients_list["drinks"].each do |element|
   array_of_ingredients << element["strIngredient1"]
end
array_of_ingredients.map! { |type| type.split }

array_of_ingredients.map! { |x| x.each { |y| y.capitalize! }}

array_of_ingredients.map! { |x| x.join(" ") }

sorted = array_of_ingredients.sort

sorted.each do |ingredient|
  Ingredient.create(name: ingredient)
end


puts "Finished Seeding"
