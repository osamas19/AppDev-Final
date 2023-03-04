# == Schema Information
#
# Table name: cards
#
#  id               :integer          not null, primary key
#  annual_fee       :integer
#  card_name        :string
#  cash_limit       :integer
#  cashback         :float
#  cat1             :integer
#  cat10            :integer
#  cat10_cash_limit :integer
#  cat10_cashback   :integer
#  cat1_cash_limit  :integer
#  cat1_cashback    :integer
#  cat2             :integer
#  cat2_cash_limit  :integer
#  cat2_cashback    :integer
#  cat3             :integer
#  cat3_cash_limit  :integer
#  cat3_cashback    :integer
#  cat4             :integer
#  cat4_cash_limit  :integer
#  cat4_cashback    :integer
#  cat5             :integer
#  cat5_cash_limit  :integer
#  cat5_cashback    :integer
#  cat6             :integer
#  cat6_cash_limit  :integer
#  cat6_cashback    :integer
#  cat7             :integer
#  cat7_cash_limit  :integer
#  cat7_cashback    :integer
#  cat8             :integer
#  cat8_cash_limit  :integer
#  cat8_cashback    :integer
#  cat9             :integer
#  cat9_cash_limit  :integer
#  cat9_cashback    :integer
#  image            :string
#  network          :string
#  no_of_cats       :integer
#  providor         :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Card < ApplicationRecord

  has_many(:user_cards, { :class_name => "UserCard", :foreign_key => "user_id", :dependent => :destroy })

  has_many(:users, { :through => :user_cards, :source => :one_user })
  
end
