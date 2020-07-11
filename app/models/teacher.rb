class Teacher < ApplicationRecord
	has_one :subjects
	  validates :name, presence: true

end
