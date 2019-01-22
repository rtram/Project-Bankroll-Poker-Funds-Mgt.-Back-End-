class Api::V1::LikesController < ApplicationController

  def index
    render json: Like.all
  end

  def create
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]


    @like = Like.new
    @like.user_id = transaction_params[:user_id]
    @like.transaction_id = transaction_params[:transaction_id]

    @like.save

    render json: @like
  end

  def destroy
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]

    @like = Like.find(params[:id])
    @like.destroy
  end

  private
  def transaction_params
    params.require(:like).permit(:user_id, :transaction_id)
  end

end
