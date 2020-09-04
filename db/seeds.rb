require 'csv'
require 'faker'
require 'byebug'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

College.destroy_all
Professor.destroy_all
Workplace.destroy_all 
College.reset_pk_sequence  
Professor.reset_pk_sequence  
Workplace.reset_pk_sequence  

puts "database cleared and primary keys reset..."
puts "planting seeds... 🌱🌱🌱"

# -------------------------------------------- Seed Colleges -------------------------------------------------- #

arr_of_arrs = CSV.read("db/colleges.csv")

arr_of_arrs.shift

converted_array = []

arr_of_arrs.each do |array|
    converted_array << {:name => array[1], :city => array[5], :state => array[6]}
end

converted_array.each do |hash|
    College.create!(hash)
end


# -------------------------------------------- Seed Professors -------------------------------------------------- #

50.times do 
    Professor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, department: Faker::Educator.subject)
end

# -------------------------------------------- Seed Users -------------------------------------------------- #

User.create!(username: "ericK", password: "abc123")
User.create!(username: "pikachu", password: "abc123")
User.create!(username: "spongebob", password: "abc123")
User.create!(username: "geodude", password: "abc123")
User.create!(username: "sailormoon", password: "abc123")

# -------------------------------------------- Seed Workplaces(joiner)-------------------------------------------------- #

# -------------------------------------------- Seed Reviews(joiner)-------------------------------------------------- #


puts "seeds ready 👀👀👀"