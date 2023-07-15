# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Trip.destroy_all
User.destroy_all

user = User.create!(email: "quentin@wagon.fr", password: "aloalo")
user.save

file = URI.open("https://cdn.spacetelescope.org/archives/images/thumb700x/heic2007a.jpg")
trip = Trip.create(
  title: 'Voyage intergalactique',
  description: 'Un voyage épique à travers les confins de l\'univers',
  location: 'Nébuleuse d\'Andromède',
  category: 'Exploration spatiale',
  price_per_day: 10000,
  user: user
)
trip.photo.attach(io: file, filename: "galactic.png", content_type: "image/jpg")
trip.save

file = URI.open("https://images.unsplash.com/photo-1446941611757-91d2c3bd3d45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bW9vbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60")
trip = Trip.create(
  title: 'Expérience sous-marine',
  description: 'Explorez les merveilles des fonds marins',
  location: 'Grande barrière de corail',
  category: 'Plongée',
  price_per_day: 5000,
  user: user
)
trip.photo.attach(io: file, filename: "underwater.png", content_type: "image/jpg")
trip.save

file = URI.open("https://images.unsplash.com/photo-1614732414444-096e5f1122d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dmVudXN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60")
trip = Trip.create(
  title: 'Randonnée en montagne',
  description: 'Découvrez des paysages spectaculaires en haute altitude',
  location: 'Himalayas',
  category: 'Montagne',
  price_per_day: 3000,
  user: user
)
trip.photo.attach(io: file, filename: "mountain.png", content_type: "image/jpg")
trip.save

file = URI.open("https://images.unsplash.com/photo-1598247526667-13268dab714c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c2F0dXJufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")
trip = Trip.create(
  title: 'Safari africain',
  description: 'Rencontrez la faune sauvage dans son habitat naturel',
  location: 'Réserve nationale du Masai Mara',
  category: 'Safari',
  price_per_day: 7000,
  user: user
)
trip.photo.attach(io: file, filename: "safari.png", content_type: "image/jpg")
trip.save

file = URI.open("https://images.unsplash.com/photo-1601814933824-fd0b574dd592?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YWxpZW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60")
trip = Trip.create(
  title: 'Escapade en ville',
  description: 'Immergez-vous dans la culture urbaine et découvrez des sites emblématiques',
  location: 'New York City',
  category: 'Ville',
  price_per_day: 4000,
  user: user
)
trip.photo.attach(io: file, filename: "city.png", content_type: "image/jpg")
trip.save
