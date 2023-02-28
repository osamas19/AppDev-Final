# == Schema Information
#
# Table name: transactions
#
#  id            :integer          not null, primary key
#  amount        :integer
#  cashback      :string
#  location      :string
#  merchant_name :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_card_id  :integer
#  user_id       :integer
#
class Transaction < ApplicationRecord

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })

  belongs_to(:card, { :required => true, :class_name => "UserCard", :foreign_key => "user_card_id" })
  
end
