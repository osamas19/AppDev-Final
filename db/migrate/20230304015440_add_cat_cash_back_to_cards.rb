class AddCatCashBackToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :cat1_cashback, :integer
    add_column :cards, :cat2_cashback, :integer
    add_column :cards, :cat3_cashback, :integer
    add_column :cards, :cat4_cashback, :integer
    add_column :cards, :cat5_cashback, :integer
    add_column :cards, :cat6_cashback, :integer
    add_column :cards, :cat7_cashback, :integer
    add_column :cards, :cat8_cashback, :integer
    add_column :cards, :cat9_cashback, :integer
    add_column :cards, :cat10_cashback, :integer
  end
end
