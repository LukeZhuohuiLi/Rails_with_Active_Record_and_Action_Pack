# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

user1 = User.create!(username: "Fiorina", password_digest: "123456")
user2 = User.create!(username: "Trump", password_digest: "123456")
user3 = User.create!(username: "Carson", password_digest: "123456")
user4 = User.create!(username: "Clinton", password_digest: "123456")

user1.create_profile(gender: "female", birth_year: 1954, first_name: "Carly", last_name: "Fiorina")
user2.create_profile(gender: "male", birth_year: 1946, first_name: "Donald", last_name: "Trump")
user3.create_profile(gender: "male", birth_year: 1951, first_name: "Ben", last_name: "Carson")
user4.create_profile(gender: "female", birth_year: 1947, first_name: "Hillary", last_name: "Clinton")

due_date = Date.today + 1.year
user1.todo_lists << TodoList.create(list_name: "President Fiorina", list_due_date: due_date)
user2.todo_lists << TodoList.create(list_name: "President Trump", list_due_date:  due_date)
user3.todo_lists << TodoList.create(list_name: "President Carson", list_due_date:  due_date)
user4.todo_lists << TodoList.create(list_name: "President Clinton", list_due_date:  due_date)

item1 = [{due_date: due_date, title: "Florida votes", description: "Will win", completed: false},
{due_date: due_date, title: "California votes", description: "Will lose", completed: true},
{due_date: due_date, title: "Texas votes", description: "Will win", completed: true},
{due_date: due_date, title: "Pensylvania votes", description: "Will win", completed: false},
{due_date: due_date, title: "New York votes", description: "Will lose", completed: true}]


item2 =[
{due_date: due_date, title: "Florida votes", description: "Will win", completed: false},
{due_date: due_date, title: "California votes", description: "Will win", completed: true},
{due_date: due_date, title: "Texas votes", description: "Will win", completed: true},
{due_date: due_date, title: "Pensylvania votes", description: "Will win", completed: true},
{due_date: due_date, title: "New York votes", description: "Will win", completed: true}
]

item3 = [
{due_date: due_date, title: "Florida votes", description: "Will win", completed: false},
{due_date: due_date, title: "California votes", description: "Will win", completed: true},
{due_date: due_date, title: "Texas votes", description: "Will win", completed: true},
{due_date: due_date, title: "Pensylvania votes", description: "Will win", completed: false},
{due_date: due_date, title: "New York votes", description: "Will lose", completed: false}
]

item4 = [
{due_date: due_date, title: "Florida votes", description: "Will win", completed: true},
{due_date: due_date, title: "California votes", description: "Will win", completed: true},
{due_date: due_date, title: "Texas votes", description: "Will lose", completed: true},
{due_date: due_date, title: "Pensylvania votes", description: "Will win", completed: false},
{due_date: due_date, title: "New York votes", description: "Will win", completed: true}
]


item1.each {|itemx| user1.todo_lists.first.todo_items << TodoItem.create!(itemx)}
item2.each {|itemx| user2.todo_lists.first.todo_items << TodoItem.create!(itemx)}
item3.each {|itemx| user3.todo_lists.first.todo_items << TodoItem.create!(itemx)}
item4.each {|itemx| user4.todo_lists.first.todo_items << TodoItem.create!(itemx)}

