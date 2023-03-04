class AddCashLimitToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :cash_limit, :integer
  end
end
