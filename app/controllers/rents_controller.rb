class RentsController < ApplicationController
  before_action :set_customer
  def new
    @rent = @customer.rents.build
  end

  def create

  end

  private

  def set_customer
    @customer = Customer.find_by(params[:customer])
  end
end 
