# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

robin = User.create(first_name:'Robin', last_name:'Tram')
sarah = User.create(first_name:'Sarah', last_name:'Tram')
kevin = User.create(first_name:'Kevin', last_name:'Tram')

t1 = Transaction.create(date:"1-11-11", amount: 11.11, sender_id: robin.id, recipient_id: sarah.id, message: "robin to sarah")

100.times {Transaction.create(date: "2019-1-1", amount: Random.new.rand(100.00).round(2), sender_id: robin.id, recipient_id:sarah.id, message:"robin to sarah" )}

# t.date "date"
# t.float "amount"
# t.integer "sender_id"
# t.integer "recipient_id"
# t.text "message"
