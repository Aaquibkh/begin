class User < ApplicationRecord

attr_accessor :password_confirmation
	
before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 , minimum: 5 },format: {with:/[a-z]/}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 },:confirmation => true

end



