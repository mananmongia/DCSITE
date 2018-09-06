class CreateBatches < ActiveRecord::Migration[5.2]
  def change
    create_table :batches do |t|
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
