class Guardian < ApplicationRecord
  has_many :jobs
  has_many :sitters, through: :jobs

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :st_addr_1, presence: true, uniqueness: true
  validates :city, presence: true

end
