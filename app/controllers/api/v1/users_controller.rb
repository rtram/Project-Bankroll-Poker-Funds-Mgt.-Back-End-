class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
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
    byebug
    render json: User.find(params[:id])
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
    @user = User.find(params[:id])
    @user.balance = params[:balance]

    @user.save

    render json: @user
  end

  private
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password)
  end

end
