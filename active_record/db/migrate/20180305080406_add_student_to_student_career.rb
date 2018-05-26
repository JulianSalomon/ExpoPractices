class AddStudentToStudentCareer < ActiveRecord::Migration[5.1]
  def change
    add_reference :student_careers, :student, foreign_key: true
  end
end
