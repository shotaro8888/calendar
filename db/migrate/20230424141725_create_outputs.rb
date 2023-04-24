class CreateOutputs < ActiveRecord::Migration[6.1]
  def change
    create_table :outputs do |t|
      t.string :diary
      t.string :thoughts
      t.string :goal
      t.integer :reading_time
      t.integer :page
      
      t.timestamps
    end
  end
end
