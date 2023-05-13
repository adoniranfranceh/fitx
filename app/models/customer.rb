class Customer < ApplicationRecord
  validates :name, :payment_at, presence: true
  belongs_to :user
  has_one :rent
end
