class Job < ApplicationRecord
  belongs_to :sitter
  belongs_to :guardian
end
