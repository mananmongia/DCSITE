class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :marks_of
      t.integer :credit

      t.timestamps
    end
  end
end
