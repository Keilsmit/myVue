# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: 'Jon K', username: 'Jonk', email: 'jk@jk.com', password: '123456')
User.create!(name: 'Keith S', username: 'KeilS', email: 'ks@jk.com', password: '123456')
list1 = List.new()
list1.author_id = User.first.id
list1.user = User.find(2)
list1.save

list2 = List.new()
list2.author_id = User.find(2).id
list2.user = User.first
list2.save
