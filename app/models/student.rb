class Student < ApplicationRecord
  belongs_to :standard
  has_many :results
  has_many :subjects
  accepts_nested_attributes_for :results, :subjects 
  validates :name, :standard_id, presence: true
end
