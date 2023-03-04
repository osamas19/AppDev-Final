class AddCatToCards < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :cat1, :integer
    add_column :cards, :cat2, :integer
    add_column :cards, :cat3, :integer
    add_column :cards, :cat4, :integer
    add_column :cards, :cat5, :integer
    add_column :cards, :cat6, :integer
    add_column :cards, :cat7, :integer
    add_column :cards, :cat8, :integer
    add_column :cards, :cat9, :integer
    add_column :cards, :cat10, :integer
  end
end
