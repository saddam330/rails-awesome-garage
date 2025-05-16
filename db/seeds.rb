# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database...."
Owner.destroy_all
Car.destroy_all

puts "Creating owners"
george = Owner.new(nickname: "Gorgi")
george.save
lukash = Owner.new(nickname: 'Luke')
lukash.save
ameila = Owner.new(nickname: 'ammi')
ameila.save

puts "Creating Cars....."
Car.create!(brand: 'Mercedes', model: 'A-Class Hatchback', year: 2024, fuel: "Unleaded petrol", owner: george)
puts "created Mercedes"
Car.create!(brand: 'Peugeot', model: "308", year: 2017, fuel: 'Unleaded Petrol', owner: lukash)
puts 'created Peugeot'
Car.create!(brand: 'Range Rover', model: "Sports", year: 2025, fuel: 'Diesel', owner: ameila)
puts 'created Range Rover'

puts "Finished! Created #{Car.count} Cars.."
