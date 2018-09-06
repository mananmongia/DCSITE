class AddBranchReferenceToBranch < ActiveRecord::Migration[5.2]
  def change
    add_reference :branches, :semester, foreign_key: true
  end
end
