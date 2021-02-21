class Job < ApplicationRecord
  belongs_to :sitters
  belongs_to :guardians
end
