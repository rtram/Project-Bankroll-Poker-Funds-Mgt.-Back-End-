#
# # USERS
# robin = User.create(username:'rtram' ,first_name:'Robin', last_name:'Tram', password:'11111111', balance: 2000.00)
# sarah = User.create(username:'sarah', first_name:'Sarah', last_name:'Tram', password:'11111111', balance: 5000.00)
# kevin = User.create(username:'kevin' ,first_name:'Kevin', last_name:'Tram', password:'11111111', balance: 4000.00)
# specialk = User.create(username:'specialk' ,first_name:'Kevin', last_name:'Nguyen', password:'11111111', balance: 3000.00)
#
# # # ROBIN'S SENT TRANSACTIONS
# 25.times {Transaction.create(date: "2019-1-1", amount: Random.new.rand(100.00).round(2), sender_id:robin.id, recipient_id:sarah.id, message:"robin to sarah" )}
# #
# 25.times {Transaction.create(date: "2019-1-1", amount: Random.new.rand(100.00).round(2), sender_id:robin.id, recipient_id:kevin.id, message:"robin to kevin" )}
# #
# 25.times {Transaction.create(date: "2019-1-1", amount: Random.new.rand(100.00).round(2), sender_id:robin.id, recipient_id:specialk.id, message:"robin to specialk" )}
# #
# # # ROBIN'S RECEIVED TRANSACTIONS
# 25.times {Transaction.create(date: "2019-1-1", amount: Random.new.rand(100.00).round(2), sender_id:sarah.id, recipient_id:robin.id, message:"robin to sarah" )}
# #
# 25.times {Transaction.create(date: "2019-1-1", amount: Random.new.rand(100.00).round(2), sender_id:kevin.id, recipient_id:robin.id, message:"robin to kevin" )}
# #
# 25.times {Transaction.create(date: "2019-1-1", amount: Random.new.rand(100.00).round(2), sender_id:specialk.id, recipient_id:robin.id, message:"robin to specialk" )}
#
# # 30 GRAPH SEEDS
# Session.create(date: "2019-1-2", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2019-1-3", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2019-1-4", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2019-1-5", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2019-1-6", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2019-1-7", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2019-1-8", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2019-1-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-31", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-30", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-29", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-28", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-27", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-26", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-25", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-24", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-23", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-22", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-21", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-20", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-19", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-18", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-17", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-16", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-15", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-14", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-13", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-12", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-11", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-10", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
#
# # 12 WEEKS GRAPH SEEDS
# Session.create(date: "2018-12-6", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-11-29", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-11-21", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-11-16", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-11-11", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-11-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-11-2", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-10-28", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-10-22", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-10-17", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-10-16", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-10-11", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-10-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-10-2", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-9-28", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-9-22", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-9-17", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
#
# # 12 MONTHS GRAPHS SEEDS
# Session.create(date: "2018-8-6", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-8-29", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-7-21", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-7-16", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-7-11", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
#
# # TESTER
# Session.create(date: "2019-1-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-12-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-11-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-10-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-9-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-8-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-7-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-6-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-5-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-4-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-3-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
# Session.create(date: "2018-2-9", location:'MGM National Harbor', hours:Random.new.rand(12), amount: Random.new.rand(-500.00..500.00).round(2), user_id:robin.id)
#
# #
