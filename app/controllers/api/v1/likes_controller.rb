class Api::V1::LikesController < ApplicationController

  def create
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]

    @like = Like.new
    @like.user_id = transaction_params[:user_id]
    @like.transaction_id = transaction_params[:transaction_id]

    @like.save

    render json: Transaction.find(transaction_params[:transaction_id])
  end

  def destroy
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]

    @like = Like.find(params[:id])
    @transaction = Transaction.find(@like.transaction_id)
    @like.destroy

    render json: @transaction
  end

  private
  def transaction_params
    params.require(:like).permit(:user_id, :transaction_id)
  end

end
