class AddCareerToStudentCareer < ActiveRecord::Migration[5.1]
  def change
    add_reference :student_careers, :career, foreign_key: true
  end
end
