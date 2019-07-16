class User < ApplicationRecord
  has_secure_password validation: true

  validates :name,  presence: true, length: { maximum: 15 }
  validates :mail, presence: true, uniqueness: true

  def self.new_remember_token
    Secure.Random.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA256.hexdigest(token.to_s)
  end
end
