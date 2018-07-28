class Api::V1::AccountsController < ApplicationController
  before_action :restrict_access


  def index
    @accounts = Account.all
    render json: accounts
  end

  def find_accounts_by_email
    @user_accounts =  User.find_by(email: params[:email]).accounts
    render json: @user_accounts
  end

  def update
    @account.update(account_params)
    if @account.save
      render json: @account, status: :accepted
    else
      render json: {errors: @account.erros.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def account_params
    params.permit(:user_id, :utility, :account_type, :account_number)
  end

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
    end
  end


end
