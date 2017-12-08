class User < ApplicationRecord

attr_accessor :password_confirmation , :remember_token, :activation_token
	
before_save { self.email = email.downcase }
before_create :create_activation_digest
  validates :name, presence: true, length: { maximum: 50 , minimum: 5 },format: {with:/[a-z]/}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
             format: { with: VALID_EMAIL_REGEX },
             uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 },:confirmation => true

  def self.new_token
        SecureRandom.urlsafe_base64
  end

  def self.digest(val)
    Digest::MD5::hexdigest(val)		
  end	

  private
  def create_activation_digest
  self.activation_token  =  User.new_token
  self.activation_digest =  User.digest(activation_token)

  end	

  def remember
  self.remember_token = User.new_token
  update_attribute(:remember_digest, User.digest(remember_token))
end

end



