class Api::V1::SessionsController < ApplicationController
  skip_before_action :authorized

  def index
    render json: Session.all
  end

  def create
    @session = Session.new
    @session.date = params[:date]
    @session.location = params[:location]
    @session.hours = params[:hours]

    @session.amount = params[:amount]
    @session.user_id = params[:user_id]

    @session.save
  end

  private
  def session_params
    params.require(:session).permit(:data, :location, :hours, :amount, :user)
  end

end
