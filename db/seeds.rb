# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Poem.destroy_all

u = User.create({sub:'google-oauth2|116846214742114904997'})

p = Poem.create({title:'love', poem:'I have fallen and now I am down', public:true, user_id: u.id})
