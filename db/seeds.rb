# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Poem.destroy_all


sean = User.create({sub:'google-oauth2|116846214742114904997', user_name:'sean'})
clark = User.create({sub:'google-oauth2|101195596441237575772', user_name:'clark'})
jordan = User.create({sub:'google-oauth2|116846211232114904997', user_name:'jordan'})
nathan = User.create({sub:'google-oauth2|116846214123114904997', user_name:'sean'})
clint = User.create({sub:'google-oauth2|116123214742114904997', user_name:'sean'})
kelvin = User.create({sub:'google-oauth2|116812314742114904997', user_name:'sean'})

users = User.all
user  = users.first
following = users[24..30]
followers = users[25..29]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
