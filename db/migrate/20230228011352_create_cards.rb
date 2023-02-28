class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :card_name
      t.string :providor
      t.string :network
      t.float :cashback
      t.string :image

      t.timestamps
    end
  end
end
