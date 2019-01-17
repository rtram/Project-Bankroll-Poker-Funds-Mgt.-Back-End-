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
    # FETCHES SELECTED USER PROFILE TRANSACTIONS
    elsif (request.headers["selectedProfile"])
      @user = User.find(request.headers["selectedProfile"].to_i)
      render json: UserSerializer.new(@user)
    end

  end

  def create
    @user = User.create(user_params)
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    @user.save
    if @user.valid?
      @token = encode({ user_id: @user.id })
      render json: { user: @user.id, jwt: @token }, status: :created
    else
      render json: {errors: @user.errors.full_messages, params: params} , status: :not_acceptable
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
    params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation, :balance)
  end

end
