# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all
Doc.destroy_all

ken = Doc.create(name:"Kendelyn Ouellette", location:"Washington DC", gender:"female", img_url:"https://s-media-cache-ak0.pinimg.com/236x/c9/98/8f/c9988f331872ea296739881c8453213a.jpg", email:"kendelyn.ouellette@gmail.com", password: "password")
erin = Doc.create(name:"Erin Dawson", location:"Washington DC", gender:"female", img_url:"http://www.providencejournal.com/storyimage/PJ/20150618/ENTERTAINMENTLIFE/150619364/AR/0/AR-150619364.jpg", email:"erinedawson@gmail.com", password: "password")

owl = Project.create(title: "Modest Owls", theme:"nature", doc: ken, body: "test test test", img_url:"http://68.media.tumblr.com/tumblr_ltvombl6tY1qeln1go1_1280.jpg")
jameson = Project.create(title: "Humblebrag", theme:"feelings", doc: erin, body: "test test test", img_url:"http://pbs.twimg.com/media/CWiKkxwVEAA9pvd.jpg:large")
