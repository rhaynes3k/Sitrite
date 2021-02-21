class User < ApplicationRecord
  has_many :guardians
  has_many :sitters
  has_many :jobs
end
