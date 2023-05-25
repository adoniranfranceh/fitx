class Customer < ApplicationRecord
  validates :name, :payment_at, presence: true
  belongs_to :user
  has_many :rents

  def check_payment(rent, customer)
    if rent &&  Date.today.month > payment_at.day && rent.created_at.month != Date.today.month
      'está atrasado'
    else
     'está em dia'
    end
  end
end
