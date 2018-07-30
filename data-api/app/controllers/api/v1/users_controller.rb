class Api::V1::UsersController < ApplicationController
  before_action :restrict_access

  def index
    @users = User.all
    render json: @users
  end

  def find_by_email
    if User.find_by(email: params[:email])
      @user = User.find_by(email: params[:email])
      render json: @user
    else
      render json: 'No such user'
    end
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end


  def show
    if User.find(params[:id])
      @user = User.find(params[:id])
      render json: @user
    else
      render json: 'not found'
    end
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: {errors: @user.erros.full_messages}, status: :unprocessible_entity
    end
  end


  private

  def user_params
    params.permit(:email, :first_name, :last_name, :status)
  end

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
    end
  end



end
