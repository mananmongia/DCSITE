class AddSemesterReferenceToSubjects < ActiveRecord::Migration[5.2]
  def change
    add_reference :subjects, :subject, foreign_key: true
  end
end
