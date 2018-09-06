class CreateSemesters < ActiveRecord::Migration[5.2]
  def change
    create_table :semesters do |t|
      t.references :student, foreign_key: true
      t.integer :sem

      t.timestamps
    end
  end
end
