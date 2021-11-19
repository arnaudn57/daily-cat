# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
Cat.create!(username: "Jimp", email: "jimpyyy@gmail.com", password: "secret", age: 20, address: "5 Place Camille Pelletan Bordeaux", description: "Un chat foufou, cha farte ?", latitude: "44.8340705", longitude: "-0.5689496")
Cat.create!(username: "Maki", email: "maki@gmail.com", password: "secret", age: 29, address: "5 Place Camille Pelletan Bordeaux", description: "T'as déjà vu un si beau poil ? cha m'étonnerait", latitude: "44.8340705", longitude: "-0.5689496")
Cat.create!(username: "Pepito", email: "pepito@gmail.com", password: "pepito", age: 23, address: "5 Place Camille Pelletan Bordeaux", description: "Oui, j'ai le nom d'un sushi, un poisson chat", latitude: "44.8340705", longitude: "-0.5689496")
Cat.create!(username: "Simba", email: "simba@gmail.com", password: "secret", age: 19, address: "5 Place Camille Pelletan Bordeaux", description: "C'est moi Simba, c'est moi le roi, de mon arbre à chat", latitude: "44.8340705", longitude: "-0.5689496")
Cat.create!(username: "Ronron", email: "ronron@gmail.com", password: "ronron", age: 20, address: "5 Place Camille Pelletan Bordeaux", description: "Prêt à danser le chat-chat-chat", latitude: "44.8340705", longitude: "-0.5689496")

image = URI.open("https://source.unsplash.com/weekly?cat")
p = Product.create!(title: "Litière", description: "Chalut, je vends ma litière, à venir chercher directement, négociable contre pâté Royal Canin, utilisée une fois (peut changer d'ici la vente)", price: 34, category: "Hygiène 🧼", cat_id: 2)
p.image.attach(io: image, filename: 'litiere', content_type: 'image/jpg')

image = URI.open("https://source.unsplash.com/weekly?cat")
p = Product.create!(title: "Souris", description: "Chalut, je vends ce jouet en parfait état, jamais utilisé car je préfère chasser avec mon ombre", price: 54, category: "Jouet 🪀", cat_id: 2)
p.image.attach(io: image, filename: 'souris', content_type: 'image/jpg')

image = URI.open("https://source.unsplash.com/weekly?cat")
p = Product.create!(title: "Arbre a chat", description: "Chalut, je vends mon arbre à chat perché", price: 250, category: "Maison 🛋", cat_id: 3)
p.image.attach(io: image, filename: 'souris', content_type: 'image/jpg')

image = URI.open("https://source.unsplash.com/weekly?cat")
p = Product.create!(title: "Gamelle", description: "Chalut, je vends ma gamelle pas cher, mon maître a pensé que c'était mignon de me voir bouffer la tête face à la tête d'un autre chat", price: 20, category: "Miam 🤤", cat_id: 4)
p.image.attach(io: image, filename: 'gamelle', content_type: 'image/jpg')

image = URI.open("https://source.unsplash.com/weekly?cat")
p = Product.create!(title: "Litière", description: "Chalut, je vends ma litière, à venir chercher directement, négociable contre pâté Royal Canin, utilisée une fois (peut changer d'ici la vente)", price: 34, category: "Hygiène 🧼", cat_id: 2)
p.image.attach(io: image, filename: 'litiere', content_type: 'image/jpg')

image = URI.open("https://source.unsplash.com/weekly?cat")
p = Product.create!(title: "Souris", description: "Chalut, je vends ce jouet en parfait état, jamais utilisé car je préfère chasser avec mon ombre", price: 54, category: "Jouet 🪀", cat_id: 2)
p.image.attach(io: image, filename: 'souris', content_type: 'image/jpg')

image = URI.open("https://source.unsplash.com/weekly?cat")
p = Product.create!(title: "Arbre a chat", description: "Chalut, je vends mon arbre à chat perché", price: 250, category: "Maison 🛋", cat_id: 3)
p.image.attach(io: image, filename: 'souris', content_type: 'image/jpg')

image = URI.open("https://source.unsplash.com/weekly?cat")
p = Product.create!(title: "Gamelle", description: "Chalut, je vends ma gamelle pas cher, mon maître a pensé que c'était mignon de me voir bouffer la tête face à la tête d'un autre chat", price: 20, category: "Miam 🤤", cat_id: 4)
p.image.attach(io: image, filename: 'gamelle', content_type: 'image/jpg')
