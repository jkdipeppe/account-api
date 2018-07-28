class BillSerializer < ActiveModel::Serializer
  attributes :id,:account_id, :start_date, :end_date, :usage, :charges, :status
  has_one :account
end
