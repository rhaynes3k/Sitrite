class Sitter < ApplicationRecord
  has_many :jobs
  has_many :guardians, through: :jobs
end
