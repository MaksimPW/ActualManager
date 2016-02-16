class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :status
      t.text :name
      t.string :description
      t.datetime :goal_time
      t.integer :duration_time
      t.references :list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
