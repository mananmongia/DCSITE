class CreateSemesterBranchSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :semester_branch_subjects do |t|
      t.references :semester, foreign_key: true
      t.references :branch, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
