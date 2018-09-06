class AddBranchReferenceToStudents < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :branch, foreign_key: true
  end
end
