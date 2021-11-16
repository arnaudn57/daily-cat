# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.create(username: "Toto", email: "Toto@gmail.com", password: "azerty", age: 20, address: " rue du pipi de chat", description: "je suis un test")
Cat.create(username: "Titi", email: "Titi@gmail.com", password: "azerty", age: 29, address: "  5 rue du pipi de chat", description: "je suis une chatte")
Cat.create(username: "Tutu", email: "Tutu@gmail.com", password: "azerty", age: 23, address: " 9 rue du pipi de chat", description: "je suis une litiere")
Cat.create(username: "Tata", email: "Tata@gmail.com", password: "azerty", age: 19, address: " 76 rue du pipi de chat", description: "je suis une souris")
Cat.create(username: "Tete", email: "Tete@gmail.com", password: "azerty", age: 20, address: " 65 rue du pipi de chat", description: "je suis un chien")

Product.create(title: "litiere", description: "belle litiere", price: 34, category: "hygiene", image: "https://source.unsplash.com/random", cat_id: 2)
Product.create(title: "souris", description: "belle souris", price: 54, category: "jouet", image: "https://source.unsplash.com/random", cat_id: 3)
Product.create(title: "arbre a chat", description: "beau arbre a chat", price: 675, category: "logement", image: "https://source.unsplash.com/random", cat_id: 4)
Product.create(title: "gamelle", description: "belle gamelle", price: 78, category: "cuisine", image: "https://source.unsplash.com/random", cat_id: 5)
Product.create(title: "chatte", description: "belle chatte", price: 69, category: "jouet", image: "https://source.unsplash.com/random", cat_id: 6)
