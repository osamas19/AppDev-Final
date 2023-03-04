class ChangeTypetoText < ActiveRecord::Migration[6.0]
  def change
    change_column :cards, :card_name, :text
    change_column :cards, :image, :text
  end
end
