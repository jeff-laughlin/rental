# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

l_1 = Landlord.create(company: 'Jeffs Rental')
l_2 = Landlord.create(company: 'Kyles Rental')

u = User.create(email: 'kyle@email.com', password: 'dogdogdog', password_confirmation: 'dogdogdog', role: l_1)
u = User.create(email: 'jeff@email.com', password: 'pigpigpig', password_confirmation: 'pigpigpig', role: l_1)


properties = [
  { address: '4944 Franklin St.', name: 'Casa de Kyle' },
  { address: '2140 Stockwell', name: 'Jeff Abode' },
  { address: '234 S. Branch Cir.' },
  { address: '1123 West Blvd.' },
  { address:'456 Macintosh Road' },
  { address: '9838 Route 34 South'}
]

properties.each do |property|
  Property.create(address_1: property[:address], city: 'Lincoln', state: 'NE', single_family: false, landlord: l_1, name: property[:name])
end

Property.second.update_attributes(single_family: true)
Property.fourth.update_attributes(single_family: true)

names = [
  'Apt 100',
  'Apt 101',
  'Apt 102'
]

property = Property.third
names.each do |name|
  Unit.create(name: name, property_id: property.id)
end
