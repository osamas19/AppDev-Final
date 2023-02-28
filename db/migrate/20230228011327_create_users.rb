class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.float :phone
      t.integer :savings
      t.integer :spending

      t.timestamps
    end
  end
end
