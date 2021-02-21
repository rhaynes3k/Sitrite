class Guardian < ApplicationRecord
  has_many :sitters, through: :jobs
  has_many :jobs
end
