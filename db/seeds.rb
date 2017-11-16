# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all

nicolas = User.create!(email: "nicolas@test.com", password: "foobar")
victor = User.create!(email: "victor@test.com", password: "foobar")

stripe = Product.create!(user: nicolas, name: "Stripe", url: "http://stripe.com",
                               tagline: "Payment integration and management",
                               category: "tech")
Product.create!(user: nicolas, name: "Le Wagon", url: "http://lewagon.com",
                                 tagline: "Le Wagon brings technical skills to creative people",
                                 category: "education")
hunter = Product.create!(user: nicolas, name: "Hunter", url: "http://hunter.io",
                               tagline: "Find all the email addresses related to a domain",
                               category: "tech")
station = Product.create!(user: victor, name: "Station", url: "http://getstation.com",
                               tagline: "One app to rule them all",
                               category: "tech")
Product.create!(user: victor, name: "InVision", url: "http://www.invisionapp.com",
                               tagline: "Prototyping and collaboration for design teams",
                               category: "design")
Product.create!(user: victor, name: "Sketch", url: "http://sketchapp.com",
                               tagline: "A vector drawing tool for modern designers",
                               category: "design")

stripe.upvotes.create! user: nicolas
stripe.upvotes.create! user: victor
hunter.upvotes.create! user: nicolas
hunter.upvotes.create! user: victor
station.upvotes.create! user: nicolas
