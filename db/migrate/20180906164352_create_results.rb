class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.references :student, foreign_key: true
      t.references :semester, foreign_key: true

      t.timestamps
    end
  end
end
