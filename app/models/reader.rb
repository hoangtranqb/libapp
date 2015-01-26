class Reader < ActiveRecord::Base
  # attr_accessible :email, :password, :password_confirmation
  validates :email, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true
  validates :email, email: true
  validates :password, confirmation: true
  attr_accessor :password, :password_confirmation
end