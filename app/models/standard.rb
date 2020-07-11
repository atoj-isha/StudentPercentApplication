class Standard < ApplicationRecord
	has_many :subjects
	has_many :students
	validates :standard,presence: true

end
