class KrediRequestsController < ApplicationController
  before_action :set_kredi_request, only: [:show, :update, :destroy]

  # GET /kredi_requests
  def index
    @kredi_requests = KrediRequest.all
    json_response(@kredi_requests)
  end

  # POST /kredi_requests
  def create
    @kredi_request = KrediRequest.create!(kredi_request_params)
    json_response(@kredi_request, :created)
  end

  # GET /kredi_requests/:id
  def show
    json_response(@kredi_request)
  end

  # PUT /kredi_requests/:id
  def update
    @kredi_request.update(kredi_request_params)
    head :no_content
  end

  # DELETE /kredi_requests/:id
  def destroy
    @kredi_request.destroy
    head :no_content
  end

  private
    def kredi_request_params
      params.require(:kredi_request).permit(  :approved,
                                              :estimated_start,
                                              :estimated_end,
                                              :amount,
                                              :user_id,
                                              :admin_id )
    end

    def set_kredi_request
      @kredi_request = KrediRequest.find(params[:id])
    end
end
