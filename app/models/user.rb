# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  first_name      :string
#  last_name       :string
#  password_digest :string
#  phone           :text
#  picture         :text
#  savings         :integer
#  spending        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:transactions, { :class_name => "Transaction", :foreign_key => "user_id", :dependent => :destroy })

  has_many(:user_cards, { :class_name => "UserCard", :foreign_key => "user_id", :dependent => :destroy })

  has_many(:cards, { :through => :user_cards, :source => :user })
  
end
