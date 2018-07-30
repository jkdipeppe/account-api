require "rails_helper"

RSpec.describe Api::V1::AccountsController do
  describe "creating an account" do
    let(:first_account) { Account.create(user_id: 56, utility: 'pepco', account_type:'residential', account_number:'7563-335-56756') }

    it "creates account successfully" do
      expect(first_account).to be_a(Account)
    end
  end

  describe "updating an account" do
    let(:first_account) { Account.create(user_id: 56, utility: 'pepco', account_type:'residential', account_number:'7563-335-56756') }

    it "updates account utility successfully" do
      first_account.update(utility: 'dominion')
      expect(first_account.utility).to eq('dominion')
    end
  end

  

end
