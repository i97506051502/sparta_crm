class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    #redirect_to "/customers/#{@customer.id}"
    redirect_to @customer
  end

  def show
    @customer = Customer.find(params[:id]) 
  end

  def update
  end

  def destroy
  end

  private

  def customer_params
    params.require(:customer).permit(
      :family_name,
      :given_name,
      :email
    )
  end

end
