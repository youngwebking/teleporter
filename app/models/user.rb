class User < ActiveRecord::Base
  has_secure_password

  before_save {|user| user.email = user.email.downcase if user.email}
  
  VALID_EMAIL_REGEX = /\A.+@.+\z/i

  validates :email, presence: true,
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
  
  validates :password,              presence: true, on:[:new, :create]
  validates :password_confirmation, presence: true, on:[:new, :create]
  
end
