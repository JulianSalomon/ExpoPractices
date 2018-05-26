class StudentCareer < ApplicationRecord
	belongs_to :students
	belongs_to :careers
end
