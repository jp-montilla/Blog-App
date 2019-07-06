# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(
	name: "Admin Surname",
	email: "email@email.com",
	role: "admin",
	password: "password",
	password_confirmation: "password"
)
Admin.create(
	name: "John Doe",
	email: "johndoe@email.com",
	role: "user",
	password: "password",
	password_confirmation: "password"
)

