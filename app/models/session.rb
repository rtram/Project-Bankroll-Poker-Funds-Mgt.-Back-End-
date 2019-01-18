class Session < ApplicationRecord
  validates :date, presence: true
  validates :location, presence: true
  validates :hours, presence: true
  validates :amount, presence: true

  belongs_to :user
end
