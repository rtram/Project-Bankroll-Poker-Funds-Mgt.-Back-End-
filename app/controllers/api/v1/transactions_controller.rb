class Api::V1::TransactionsController < ApplicationController

  def create
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]

    @transaction = Transaction.new
    @transaction.date = transaction_params[:date]
    @transaction.message = transaction_params[:message]
    @transaction.amount = transaction_params[:amount]
    @transaction.sender_id = transaction_params[:sender_id]
    @transaction.recipient_id = transaction_params[:recipient_id]

    @transaction.save

    render json: @transaction
  end

  private
  def transaction_params
    params.require(:transaction).permit(:date, :message, :amount, :recipient_id, :sender_id)
  end

end
