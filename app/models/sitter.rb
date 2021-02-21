class Sitter < ApplicationRecord
  has_many :guardians, through: :jobs
  has_many :jobs
end
