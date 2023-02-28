class CreateUserCards < ActiveRecord::Migration[6.0]
  def change
    create_table :user_cards do |t|
      t.float :card_4_digits
      t.date :validity
      t.string :name_as_shown
      t.integer :user_id
      t.integer :card_id

      t.timestamps
    end
  end
end
