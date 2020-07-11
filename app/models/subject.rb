class Subject < ApplicationRecord
  belongs_to :standard
  belongs_to :teacher
  has_many :results
  accepts_nested_attributes_for :results
end
