class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.integer :account_id
      t.date :start_date
      t.date :end_date
      t.integer :usage
      t.float :charges
      t.string :status

      t.timestamps
    end
  end
end
