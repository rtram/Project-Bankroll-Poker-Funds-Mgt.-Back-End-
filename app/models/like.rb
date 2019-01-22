class Like < ApplicationRecord
  belongs_to :tx, class_name: "Transaction", :foreign_key => :transaction_id
  belongs_to :user
end
