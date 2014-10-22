class User < ActiveRecord::Base

  validates :uuid,            presence: true
  validates :email,           presence: true
  validates :password_digest, presence: true
  
end
