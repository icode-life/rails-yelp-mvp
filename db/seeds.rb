# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


puts "[*] Starting"

10.times do
  name = Faker::Name.last_name
  address = Faker::Address.full_address
  category = %w(chinese italian japanese french belgian).sample
  phone_number = Faker::PhoneNumber.phone_number
  Restaurant.create!(name: name , category: category, address: address, phone_number: phone_number)
end

puts "[*] Done"
