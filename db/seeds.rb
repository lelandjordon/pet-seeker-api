# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require_relative './pet_data.rb'
require_relative './shelter_data.rb'

Pet.destroy_all
Shelter.destroy_all

pet_data = get_pet_data()
shelter_data = get_shelter_data()

pet_data.each_pair do |shelter_name, pets|
  info = shelter_data[shelter_name]
  current_shelter = Shelter.create!({
    name:       info[:name],
    address:    info[:address],
    phone:      info[:phone]
    })

    pets.each do |pet|
      Pet.create!({
        species:    pet[:species],
        breed:      pet[:breed],
        age:        pet[:age],
        name:       pet[:name],
        photo_url:  pet[:photo_url],
        shelter:    current_shelter
      })
    end
  end
