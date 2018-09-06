class AddSemesterReferenceToStudents < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :semester, foreign_key: true
  end
end
