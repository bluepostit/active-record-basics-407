# This is where you can create initial data for your app.
require 'faker'

puts "Creating some restaurants"
vitrina = Restaurant.new(name: 'Vitrina', address: 'Lilienbloom, Tel Aviv')
vitrina.save!

mcd = Restaurant.new(name: "McDonald's", address: 'Rothschild, Tel Aviv')
mcd.save!

Restaurant.create!(name: 'Moses', address: 'Rothschild, Tel Aviv')

puts "Done."


#### Generate some with fake names

100.times do
  name = Faker::Restaurant.name
  address = Faker::Address.street_name
  Restaurant.create!(name: name, address: address)
end
