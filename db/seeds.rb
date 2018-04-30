# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
dan = User.create(name: "Daniel", username: "dan1", userPassword:"asdf", home_address: "1940 78th Street East elmhurst NY 11370", wifi_name:"Snoopy", wifi_password: "snoopy123")
home = Hangout.create(status: true, location: "home", hangout_time: 3)
