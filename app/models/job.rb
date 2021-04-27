class Job < ApplicationRecord
  belongs_to :sitter
  belongs_to :guardian
  belongs_to :user
  scope :busiest_sitter, -> {joins(:sitter).where("duration >= ?", 6).limit(3).order('id desc') }
# binding.pry
end
