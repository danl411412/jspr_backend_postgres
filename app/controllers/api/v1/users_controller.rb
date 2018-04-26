class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def
    @user = User.find(params[:id])

    @user.update(user_params)
    if @user.save
      render json: @user
    else
      render json: {errors: @note.errors.full_messages}, status: 422
    end
  end

  private
    # def 
    #   params.permit()
    # end

end
