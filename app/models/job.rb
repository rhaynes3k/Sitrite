class Job < ApplicationRecord
  belongs_to :sitter
  belongs_to :guardian
  belongs_to :user

  validates :date, presence: true
  validates :duration, presence: true
  validates :num_of_kids, presence: true
  # validates :sitter_id, presence: true
  # validates :guardian_id, presence: true

  scope :busiest_sitter, -> {joins(:sitter).where("duration >= ?", 6).limit(3).order('id desc') }
# binding.pry
end
