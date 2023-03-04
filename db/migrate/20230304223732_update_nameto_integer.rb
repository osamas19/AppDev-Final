class UpdateNametoInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :user_cards, :card_4_digits, :integer
  end
end
