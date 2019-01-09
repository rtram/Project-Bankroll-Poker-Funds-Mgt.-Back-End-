class SessionSerializer < ActiveModel::Serializer
  attributes :date, :location, :hours, :amount

  belongs_to :user
end
