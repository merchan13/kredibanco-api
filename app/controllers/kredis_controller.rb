class KredisController < ApplicationController
  before_action :set_kredi, only: [:show, :update, :destroy]

  # GET /kredis
  def index
    @kredis = Kredi.all
    json_response(@kredis)
  end

  # POST /kredis
  def create
    @kredi = Kredi.create!(kredi_params)
    json_response(@kredi, :created)
  end

  # GET /kredis/:id
  def show
    json_response(@kredi)
  end

  # PUT /kredis/:id
  def update
    @kredi.update(kredi_params)
    head :no_content
  end

  # DELETE /kredis/:id
  def destroy
    @kredi.destroy
    head :no_content
  end

  private
    def kredi_params
      params.require(:kredi).permit(  :active,
                                      :finished,
                                      :kredi_start,
                                      :kredi_end,
                                      :annual_interest,
                                      :payments,
                                      :payments_amount
                                      :adequate_amount,
                                      :final_amount,
                                      :bank_arrears,
                                      :kredi_request_id )
    end

    def set_kredi
      @kredi = Kredi.find(params[:id])
    end
end
