class Guardian < ApplicationRecord
  has_many :jobs
  has_many :sitters, through: :jobs
end
