# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

owners = Owner.create([{name: "Matz", description: "This is Matz"}, {name: "Sean", description: "This is Sean"}])

articles = Article.create([{name: "Iphone", description: "This is a Iphone", price: 100, owner_id: owners[0].id}, {name: "Android", description: "This is Android", price: 80, owner_id: owners[0].id}])

articles_new = Article.create([{name: "Iphone_7", description: "This is a Iphone 7", price: 100, owner_id: owners[1].id}, {name: "Android_N", description: "This is Android N", price: 80, owner_id: owners[1].id}])
