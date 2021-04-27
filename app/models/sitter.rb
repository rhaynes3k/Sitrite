class Sitter < ApplicationRecord
  has_many :jobs
  has_many :guardians, through: :jobs

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

end
