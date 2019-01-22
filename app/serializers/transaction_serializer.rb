class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :date, :message, :amount, :recipient, :sender, :likes

  def recipient
    if self.object.recipient
      {
        first_name: self.object.recipient.first_name,
        last_name: self.object.recipient.last_name
      }
    end
  end

  def sender
    if self.object.sender
      {
        first_name: self.object.sender.first_name,
        last_name: self.object.sender.last_name
      }
    end
  end

  def likes
    self.object.likes.map do |likeObject|
      {
        id: likeObject.id,
        user_id: likeObject.user.id,
        first_name: likeObject.user.first_name,
        last_name: likeObject.user.last_name,
      }
    end
  end

  belongs_to :recipient, class_name: "User", :foreign_key => :recipient_id
  belongs_to :sender, class_name: "User", :foreign_key => :sender_id
end
