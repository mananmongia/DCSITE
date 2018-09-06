class AddBatchReferenceToStudents < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :batch, foreign_key: true
  end
end
