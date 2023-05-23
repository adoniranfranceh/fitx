module CustomersHelper
  def fieldset_disabled
    if action_name == 'show'
      'disabled-form'
    end
  end

  def customer_paid?(rent, customer, name)
    unless rent
      return "Ainda não há nenhum pagamento"
    else
      if customer.payment_at.day == rent.created_at.day
        monthly =  Date.today.day - customer.payment_at.day
        case monthly
        when -2 
          message = 'vence em 2 dias' 
        when -1
          message = 'vence em 1 dia'
        when 0
          message = 'foi efetuado hoje'
        else 
          message = 'está em dia'
        end
        return "O pagamento de #{name} #{message}!"
      else 
        "#{name} não efetuou pagamento esse mês"
      end
    end
  end
end
