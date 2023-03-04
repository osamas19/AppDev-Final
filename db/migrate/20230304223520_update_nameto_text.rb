class UpdateNametoText < ActiveRecord::Migration[6.0]
  def change
    change_column :user_cards, :name_as_shown, :text
  end
end
