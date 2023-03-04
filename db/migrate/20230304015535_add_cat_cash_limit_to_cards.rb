class AddCatCashLimitToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :cat1_cash_limit, :integer
    add_column :cards, :cat2_cash_limit, :integer
    add_column :cards, :cat3_cash_limit, :integer
    add_column :cards, :cat4_cash_limit, :integer
    add_column :cards, :cat5_cash_limit, :integer
    add_column :cards, :cat6_cash_limit, :integer
    add_column :cards, :cat7_cash_limit, :integer
    add_column :cards, :cat8_cash_limit, :integer
    add_column :cards, :cat9_cash_limit, :integer
    add_column :cards, :cat10_cash_limit, :integer
  end
end
