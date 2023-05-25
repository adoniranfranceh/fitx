module CustomersHelper
  attr_reader :message
  def fieldset_disabled
    if action_name == 'show'
      'disabled-form'
    end
  end

  def customer_paid?(rent, customer, name)
    unless rent
      return "#{name} não possui nenhum pagamento"
    else
      message = customer.check_payment(rent, customer)
      "O pagamento de #{name} #{message}!"
    end
  end
end
