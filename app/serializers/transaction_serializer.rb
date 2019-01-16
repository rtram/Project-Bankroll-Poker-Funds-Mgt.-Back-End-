class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :date, :message, :amount, :recipient, :sender

  def recipient
    {
      first_name: self.object.recipient.first_name,
      last_name: self.object.recipient.last_name
    }
  end

  def sender
    {
      first_name: self.object.sender.first_name,
      last_name: self.object.sender.last_name
    }
  end

  belongs_to :recipient, class_name: "User", :foreign_key => :recipient_id
  belongs_to :sender, class_name: "User", :foreign_key => :sender_id
end
