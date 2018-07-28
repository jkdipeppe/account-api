class Api::V1::UsersController < ApplicationController
  # uncomment the below two lines if using bcrypt and users have passwords
  # before_action :find_user, only: [:show_user, :update]
  # skip_before_action :authorized, only: [:create]

  before_action :restrict_access


  def index
    byebug
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
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    #change to @current_user if using bcrypt
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: {errors: @user.erros.full_messages}, status: :unprocessible_entity
    end
  end

  # if using bcrypt this method would show the logged in user with a custom route
  # def show_user
  #   render json: current_user
  # end

  private

  # add :password to params if using bcrypt and have users sign in
  def user_params
    params.permit(:email, :first_name, :last_name, :status)
  end

  def restrict_access
    # byebug
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
    end
  end

  # private method for show user function
  # def find_user
  #   @current_user
  # end


end
