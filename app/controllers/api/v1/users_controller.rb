class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def login
    @user = User.find_by(username: params[:username])
    if @user.present?
      if @user.authenticate(params[:password])
        render json: @user
      else
        render json: {errors: @user.errors.full_messages}
      end
    else
      render json: {errors: @user.errors.full_messages}
    end
  end

  def create
    @user = User.create(user_params(:name, :username, :password, :password_confirmation))
    render json: @user
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update

    @user = User.find(params[:id])

    @user.update(user_params(:name, :username, :password, :home_address, :phone_number, :wifi_name, :wifi_password))
    if @user.save
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end
  end

  private
    def user_params(*args)
      params.permit(args)
    end

end
