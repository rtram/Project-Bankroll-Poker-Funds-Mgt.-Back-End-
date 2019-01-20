class Api::V1::RequestsController < ApplicationController

  def index
    render json: Request.all
  end

  def create
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]

    @request = Request.new
    @request.date = request_params[:date]
    @request.message = request_params[:message]
    @request.amount = request_params[:amount]
    @request.status = 'pending'
    @request.requestor_id = request_params[:requestor_id]
    @request.requestee_id = request_params[:requestee_id]

    @request.save
    render json: @request
  end

  def destroy
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]

    @request = Request.find(params[:id])
    @request.destroy
  end

  private
  def request_params
    params.require(:request).permit(:date, :message, :amount, :requestor_id, :requestee_id, :type)
  end

end
