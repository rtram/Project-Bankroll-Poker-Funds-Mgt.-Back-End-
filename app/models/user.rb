class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true, uniqueness: { case_sensitive: false }
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { in: 6..20 }, confirmation: {case_sensitive: true}

  has_many :game_users
  has_many :games, through: :game_users

  has_many :sessions

  has_many :sent_transactions, class_name: "Transaction", :foreign_key => :sender_id
  has_many :received_transactions, class_name: "Transaction", :foreign_key => :recipient_id
end
