class User < ApplicationRecord
  has_secure_password
  has_many :guardians
  has_many :sitters
  has_many :jobs

  validates :name, presence: true
  validates :email, presence: true

  def self.create_from_omniauth(auth)
    User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
      u.username = auth['info']['name']
      u.email = auth['info']['email']
      u.password = SecureRandom.hex(16)
    end
  end



end
