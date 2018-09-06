class CreateBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :branches do |t|
      t.string :name
      t.integer :time_period_year

      t.timestamps
    end
  end
end
