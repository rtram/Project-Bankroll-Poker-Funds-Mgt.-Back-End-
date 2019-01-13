class SessionSerializer < ActiveModel::Serializer
  attributes :id, :date, :location, :hours, :amount

  belongs_to :user
end
