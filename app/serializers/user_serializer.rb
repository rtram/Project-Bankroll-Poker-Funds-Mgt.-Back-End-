class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :first_name, :last_name, :balance, :url

  has_many :sent_transactions, class_name: "Transaction", :foreign_key => :sender_id
  has_many :received_transactions, class_name: "Transaction", :foreign_key => :recipient_id

  has_many :sent_requests, class_name: "Request", :foreign_key => :requestor_id
  has_many :received_requests, class_name: "Request", :foreign_key => :requestee_id
end
