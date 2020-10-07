# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "Gabe", password: "123")
Artist.create(name: "Tool", genre: "metal")
Album.create(title: "10,000 Days", artist_id: Artist.first.id)
Review.create(user_id: User.first.id, album_id: Album.first.id, rating: 8, review: "Good album.")
