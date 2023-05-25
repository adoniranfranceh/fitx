class Customer < ApplicationRecord
  validates :name, :payment_at, presence: true
  belongs_to :user
  has_many :rents

  def check_payment(rent, customer)
    if rent && Date.today.day > payment_at.day && rent.created_at.month != 6
      'está atrasado'
    else
     'está em dia'
    end
  end

  scope :overdue_customers, -> (rent) do
    select{ |customer| customer.check_payment(rent, customer) == 'está atrasado' }
  end
end
