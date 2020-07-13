# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Numair", password: "1234")
User.create(username: "Don", password: "1234")
User.create(username: "Heechan", password: "1234")
User.create(username: "Urooba", password: "1234")

Message.create(body: "Hi, I'm Numair", user: User.last)
Message.create(body: "Hi, I'm Urooba", user: User.last)