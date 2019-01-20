class RequestSerializer < ActiveModel::Serializer
  attributes :id, :date, :message, :amount, :status, :requestor, :requestee

  def requestor
    {
      id: self.object.requestor.id,
      first_name: self.object.requestor.first_name,
      last_name: self.object.requestor.last_name,
      balance: self.object.requestor.balance
    }
  end

  def requestee
    {
      id: self.object.requestee.id,
      first_name: self.object.requestee.first_name,
      last_name: self.object.requestee.last_name
    }
  end

  belongs_to :requestor, class_name: "User", :foreign_key => :requestor_id
  belongs_to :requestee, class_name: "User", :foreign_key => :requestee_id
end
