# == Schema Information
#
# Table name: user_cards
#
#  id            :integer          not null, primary key
#  card_4_digits :integer
#  name_as_shown :text
#  validity      :date
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  card_id       :integer
#  user_id       :integer
#
class UserCard < ApplicationRecord

  belongs_to(:one_user, { :required => true, :class_name => "User", :foreign_key => "name_as_shown" })

  belongs_to(:user, { :required => true, :class_name => "Card", :foreign_key => "user_id" })

  has_many(:transactions, { :class_name => "Transaction", :foreign_key => "user_card_id", :dependent => :destroy })

  
end
