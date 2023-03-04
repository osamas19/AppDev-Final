class NoOfCatsToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :no_of_cats, :integer
    add_column :cards, :annual_fee, :integer
  end
end
