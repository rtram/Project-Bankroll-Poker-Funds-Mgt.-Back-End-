class Api::V1::SessionsController < ApplicationController

  def create
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]

    @session = Session.new
    @session.date = params[:date]
    @session.location = params[:location]
    @session.hours = params[:hours]
    @session.amount = params[:amount]
    @session.user_id = user_id

    @session.save
    if @session.errors.full_messages.length > 0
      render json: {errors: @session.errors.full_messages}
    else
      render json: @session
    end
  end

  def update
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]

    @session = Session.find(params[:id])
    @session.date = params[:date]
    @session.location = params[:location]
    @session.hours = params[:hours]
    @session.amount = params[:amount]

    @session.save

    render json: @session
  end

  def destroy
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]

    @session = Session.find(params[:id])
    @session.destroy
  end

  private
  def session_params
    params.require(:session).permit(:data, :location, :hours, :amount, :user)
  end

end
