class Api::V1::UsersController < ApplicationController

  def index
    # NEED TO ADD AUTHENTICATION
    @user_list = User.all
    array = []
    @user_list.each do |user|
      array << {
        id: user.id,
        username: user.username,
        first_name: user.first_name,
        last_name: user.last_name
      }
    end
    render json: array
  end

  def show
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]

    # FETCHES USER SESSIONS
    if request.headers["userSessions"]
      render json: User.find(params[:id]).sessions
    # FETCHES USER TRANSACTIONS
    elsif (request.headers["userBalance"])
      @user = User.find(params[:id])
      render json: UserSerializer.new(@user)
    end

  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user_id = payload["user_id"]

    @user = User.find(user_id)
    @user.balance = params[:balance]

    @user.save

    render json: @user.balance
  end

  private
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password)
  end

end
