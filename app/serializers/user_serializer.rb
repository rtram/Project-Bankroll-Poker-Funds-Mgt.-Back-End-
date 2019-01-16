class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :first_name, :last_name, :balance
  # #
  # # has_many :game_users
  # # has_many :games, through: :game_users
  #
  # has_many :sessions
  #
  has_many :sent_transactions, class_name: "Transaction", :foreign_key => :sender_id
  has_many :received_transactions, class_name: "Transaction", :foreign_key => :recipient_id
end
