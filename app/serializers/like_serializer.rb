class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user, :transaction_id

  belongs_to :user
end
