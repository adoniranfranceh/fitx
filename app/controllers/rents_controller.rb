class RentsController < ApplicationController
  before_action :set_customer
  def new
    @rent = @customer.rents.build
  end

  def create
    @rent = @customer.rents.build(rent_params)
    if @rent.save
      redirect_to @customer, notice: "Novo pagamento adicionado"
    else
      :new
    end
  end

  private

  def set_customer
    @customer = Customer.find_by(params[:customer])
  end

  def rent_params
    params.require(:rent).permit(:cost)
  end
end 
