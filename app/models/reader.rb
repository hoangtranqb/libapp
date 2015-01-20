class Reader < ActiveRecord::Base
  # attr_accessible :email, :password, :password_confirmation
  attr_accessor :password, :password_confirmation
end