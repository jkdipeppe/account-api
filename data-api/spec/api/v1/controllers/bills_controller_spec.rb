require "rails_helper"

RSpec.describe Api::V1::BillsController do
  describe "creating a bill" do
    let(:first_bill) { Bill.create(account_id: 70, start_date: '2145-11-25', end_date: '2148-02-16', usage: 528, charges: 96.23, status:'unpaid') }

    it "creates bill successfully" do
      expect(first_bill).to be_a(Bill)
    end
  end

  describe "updating a bills status" do
    let(:first_bill) { Bill.create(account_id: 70, start_date: '2145-11-25', end_date: '2148-02-16', usage: 528, charges: 96.23, status:'unpaid') }

    it "updates account utility successfully" do
      first_bill.update(status: 'paid')
      expect(first_bill.status).to eq('paid')
    end
  end


end
