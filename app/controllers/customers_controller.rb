class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.all
  end

  def show; end

  def new
    @customer = Customer.new
  end

  def create 
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path, notice: "Cadastrado com sucesso!"
    else
      flash[:notice] = "Existe campos inválidos!"
      render :new
    end
  end

  def edit; end

  def update
    if @customer.update(customer_params)
      redirect_to @customer
    else
      render :edit
    end
  end

  def destroy
    if @customer.destroy
      redirect_to customers_path, notice: "Cliente #{@customer.name} excluído"
    end
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(
      :name, 
      :document, 
      :phone, 
      :payment_at, 
      :age, 
      :weigth, 
      :height
     )
  end
end
