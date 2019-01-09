class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :date, :message, :amount, :recipient, :sender

  def recipient
    {
      id: self.object.recipient.id,
      username: self.object.recipient.username,
      first_name: self.object.recipient.first_name,
      last_name: self.object.recipient.last_name
    }
  end

  def sender
    {
      id: self.object.sender.id,
      username: self.object.sender.username,
      first_name: self.object.sender.first_name,
      last_name: self.object.sender.last_name
    }
  end

  belongs_to :recipient, class_name: "User", :foreign_key => :recipient_id
  belongs_to :sender, class_name: "User", :foreign_key => :sender_id
end
