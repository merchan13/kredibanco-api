class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :update, :destroy]

  # GET /payments
  def index
    @payments = Payment.all
    json_response(@payments)
  end

  # POST /payments
  def create
    @payment = Payment.create!(payment_params)
    json_response(@payment, :created)
  end

  # GET /payments/:id
  def show
    json_response(@payment)
  end

  # PUT /payments/:id
  def update
    @payment.update(payment_params)
    head :no_content
  end

  # DELETE /payments/:id
  def destroy
    @payment.destroy
    head :no_content
  end

  private
    def payment_params
      params.require(:payment).permit(  :email,
                                        :password,
                                        :password_confirmation,
                                        :name,
                                        :lastname,
                                        :phone,
                                        :active_payment,
                                        :credit_score,
                                        :user_id,
                                        :kredi_id )
    end

    def set_payment
      @payment = Payment.find(params[:id])
    end
end
