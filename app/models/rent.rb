class Rent < ApplicationRecord
  belongs_to :customer
  validates :cost, :customer, presence: true
end
