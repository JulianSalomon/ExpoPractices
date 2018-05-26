class CreateStudentCareers < ActiveRecord::Migration[5.1]
  def change
    create_table :student_careers do |t|

      t.timestamps
    end
  end
end
