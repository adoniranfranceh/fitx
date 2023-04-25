class Customer < ApplicationRecord
  validates :name, :payment_at, presence: true
end
