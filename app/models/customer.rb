class Customer < ApplicationRecord
  validates :name, :payment_at, presence: true
  belongs_to :user
end
