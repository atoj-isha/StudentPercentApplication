class Result < ApplicationRecord
  belongs_to :student
  belongs_to :subject
  accepts_nested_attributes_for :student, :subject
end
