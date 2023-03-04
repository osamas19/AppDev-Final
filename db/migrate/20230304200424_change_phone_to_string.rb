class ChangePhoneToString < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :phone, :text
    change_column :users, :email, :text
  end
end
