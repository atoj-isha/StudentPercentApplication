class Result < ApplicationRecord
  belongs_to :student
  belongs_to :subject
  accepts_nested_attributes_for :student, :subject
  validates :mark, :student_id, :standard_id, presence: true

end
