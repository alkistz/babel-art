# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up database"
User.destroy_all
Song.destroy_all
puts "Database is clean"


users = User.create([
  {
    email: 'alkiviadistzaras@yahoo.gr',
    password: 'xaxaxa123'
  },

  {
    email: 'allos@yahoo.gr',
    password: '123456789'
  }

])






