class Student < ApplicationRecord
  has_many :student_has_careers
  has_many :students, through: :StudentCareer
  validates :first_name, :last_name, presence: true, length: { maximum: 15 }
end