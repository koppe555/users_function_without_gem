class User < ApplicationRecord

  has_secure_password validation: true

  validates :name,  presence: true, length: { maximum: 15 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@aoyama.jp/
  validates :mail, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX },  uniqueness: true

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA256.hexdigest(token.to_s)
  end
end
