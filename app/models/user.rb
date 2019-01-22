class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :sessions

  has_many :likes

  has_many :sent_transactions, class_name: "Transaction", :foreign_key => :sender_id
  has_many :received_transactions, class_name: "Transaction", :foreign_key => :recipient_id

  has_many :sent_requests, class_name: "Request", :foreign_key => :requestor_id
  has_many :received_requests, class_name: "Request", :foreign_key => :requestee_id
end
