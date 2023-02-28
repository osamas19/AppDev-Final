# == Schema Information
#
# Table name: cards
#
#  id         :integer          not null, primary key
#  card_name  :string
#  cashback   :float
#  image      :string
#  network    :string
#  providor   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Card < ApplicationRecord

  has_many(:user_cards, { :class_name => "UserCard", :foreign_key => "user_id", :dependent => :destroy })

  has_many(:users, { :through => :user_cards, :source => :one_user })
  
end
