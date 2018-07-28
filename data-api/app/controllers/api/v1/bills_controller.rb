class Api::V1::BillsController < ApplicationController

  before_action :restrict_access


  def index
    @bills = Bill.all
    render json: @bills
  end

  def find_bills_by_email
    user_accounts =  User.find_by(email: params[:email]).accounts
    account_ids = []
    user_accounts.each do |account|
      account_ids.push(account.id)
    end
    @bills = []
    Bill.all.each do |bill|
      if account_ids.include?(bill.account_id)
        @bills.push(bill)
      end
    end
    render json: @bills
  end


  def unpaid_bills
    @unpaid_bills = []
    Bill.each do |bill|
      if bill.status == 'unpaid'
        @unpaid_bills.push(bill)
      end
    end
    render json: @unpaid_bills
  end

  def paid_bills
    @paid_bills = []
    Bill.each do |bill|
      if bill.status == 'paid'
        @paid_bills.push(bill)
      end
    end
    render json: @paid_bills
  end

  def unpaid_bills_by_email
    user_accounts =  User.find_by(email: params[:email]).accounts
    account_ids = []
    user_accounts.each do |account|
      account_ids.push(account.id)
    end
    @bills = []
    Bill.all.each do |bill|
      if account_ids.include?(bill.account_id) && bill.status == 'unpaid'
        @bills.push(bill)
      end
    end
    render json: @bills
  end

  def paid_bills_by_email
    user_accounts =  User.find_by(email: params[:email]).accounts
    account_ids = []
    user_accounts.each do |account|
      account_ids.push(account.id)
    end
    @bills = []
    Bill.all.each do |bill|
      if account_ids.include?(bill.account_id) && bill.status == 'paid'
        @bills.push(bill)
      end
    end
    render json: @bills
  end

  def total_charges_by_email
    @total_charges = {}

    if User.find_by(email: params[:email])
      @total_charges['unpaid_charges'] = 0
      @total_charges['paid_charges'] = 0
      @total_charges['user'] = User.find_by(email: params[:email])
      user_accounts =  User.find_by(email: params[:email]).accounts
      account_ids = []
      user_accounts.each do |account|
        account_ids.push(account.id)
      end
      Bill.all.each do |bill|
        if account_ids.include?(bill.account_id) && bill.status == 'unpaid'
          @total_charges['unpaid_charges'] += bill.charges
        elsif account_ids.include?(bill.account_id) && bill.status == 'paid'
          @total_charges['paid_charges'] += bill.charges
        end
      end
    elsif
      @total_charges['user'] = 'No such user'
    end

    render json: @total_charges
  end

  def update
    @bill.update(bill_params)
    if @bill.save
      render json: @bill, status: :accepted
    else
      render json: {errors: @bill.erros.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def bill_params
    params.permit(:status, :account_id, :start_date, :end_date, :usage, :charges)
  end

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.exists?(access_token: token)
    end
  end

end
