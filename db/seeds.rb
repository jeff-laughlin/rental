# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

l_1 = Landlord.create(company: 'Jeffs Rental')
l_2 = Landlord.create(company: 'Kyles Rental')

u = User.create(email: 'kyle@email.com', password: 'dogdogdog', password_confirmation: 'dogdogdog', role: l_2)
u = User.create(email: 'jeff@email.com', password: 'catcatcat', password_confirmation: 'catcatcat', role: l_2)
