class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :merchant_name
      t.integer :amount
      t.string :cashback
      t.integer :user_id
      t.integer :user_card_id
      t.string :location

      t.timestamps
    end
  end
end
