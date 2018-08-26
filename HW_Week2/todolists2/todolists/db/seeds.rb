# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

User.create! [
	{username: "Fiorina", password_digest: "123456"},
	{username: "Trump", password_digest: "123456"},
	{username: "Carson", password_digest: "123456"},
	{username: "Clinton", password_digest: "123456"},
]


User.find_by!(username: "Fiorina").profile.create(gender: "M", birth_year: 1954, first_name: "Carly", last_name: "Fiorina")
