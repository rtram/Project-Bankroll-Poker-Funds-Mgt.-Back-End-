
# USERS
robin = User.create(username:'rtram' ,first_name:'Robin', last_name:'Tram', password:'1')
sarah = User.create(username:'sarah', first_name:'Sarah', last_name:'Tram', password:'1')
kevin = User.create(username:'kevin' ,first_name:'Kevin', last_name:'Tram', password:'1')
specialk = User.create(username:'specialk' ,first_name:'Kevin', last_name:'Nguyen', password:'1')

# ROBIN'S SENT TRANSACTIONS
25.times {Transaction.create(date: "2019-1-1", amount: Random.new.rand(100.00).round(2), sender_id:robin.id, recipient_id:sarah.id, message:"robin to sarah" )}

25.times {Transaction.create(date: "2019-1-1", amount: Random.new.rand(100.00).round(2), sender_id:robin.id, recipient_id:kevin.id, message:"robin to kevin" )}

25.times {Transaction.create(date: "2019-1-1", amount: Random.new.rand(100.00).round(2), sender_id:robin.id, recipient_id:specialk.id, message:"robin to specialk" )}

# ROBIN'S RECEIVED TRANSACTIONS
25.times {Transaction.create(date: "2019-1-1", amount: Random.new.rand(100.00).round(2), sender_id:sarah.id, recipient_id:robin.id, message:"robin to sarah" )}

25.times {Transaction.create(date: "2019-1-1", amount: Random.new.rand(100.00).round(2), sender_id:kevin.id, recipient_id:robin.id, message:"robin to kevin" )}

25.times {Transaction.create(date: "2019-1-1", amount: Random.new.rand(100.00).round(2), sender_id:specialk.id, recipient_id:robin.id, message:"robin to specialk" )}

# ROBIN'S SESSIONS
50.times {Session.create(date: "2019-1-1", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)}

# GAMES
Game.create(name: "Robin's Home Game", date: '2019-1-1', location:'5326 Poplar Valley Ct., Centreville, Va, 22030', host_id:robin.id)
