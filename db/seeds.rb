# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_list = [
  [ 1, "Fruit", "The sweet and fleshy product of a tree or other plant that contains seed and can be eaten as food."],
  [ 2, "Staple", "What we eat routinely, generally starchy foods"],
  [ 3, "Hygiene", "Products we use for personal hygiene purposes"],
]

product_list = [
  [ 1, "Apples", "The round fruit of a tree of the rose family, which typically has thin red or green skin and crisp flesh. Many varieties have been developed as dessert or cooking fruit or for making cider.
", 1 ],
  [ 2, "Bananas", "A long curved fruit that grows in clusters and has soft pulpy flesh and yellow skin when ripe.", 1],
  [ 3, "Mangoes", "A fleshy yellowish-red tropical fruit that is eaten ripe or used green for pickles or chutneys.", 1 ],
  [ 4, "Rice", "A swamp grass that is widely cultivated as a source of food, especially in Asia.", 2 ],
  [ 5, "Potatoes", "A starchy plant tuber that is one of the most important food crops, cooked and eaten as a vegetable.", 2 ],
  [ 6, "Soap", "A substance used with water for washing and cleaning, made of a compound of natural oils or fats with sodium hydroxide or another strong alkali, and typically having perfume and coloring added.", 3 ],
  [ 7, "Toothpaste", "a paste used on a toothbrush for cleaning the teeth.", 3 ],
]

stockroom_list = [
  [ 1, "Fruit Market", "POINT(-39.087260, -72.929819)"],
  [ 2, "Mini Market", "POINT(-39.086405, -72.930027)"],
  [ 3, "Local Cooperative", "POINT(-39.086405, -72.930027)"],
]

category_list.each do |id, name, description|
  Category.create( name: name, description: description )
end

product_list.each do |id, name, description, category_id|
  Product.create( id: id, name: name, description: description, category_id: category_id)
end

stockroom_list.each do |id, name, lonlat|
  Stockroom.create( id: id, name: name, lonlat: lonlat)
end
