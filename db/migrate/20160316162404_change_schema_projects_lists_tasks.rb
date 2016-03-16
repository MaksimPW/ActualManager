class ChangeSchemaProjectsListsTasks < ActiveRecord::Migration
  def up
    drop_table :projects
    drop_table :lists
    drop_table :tasks

    create_table :projects do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end

    create_table :lists do |t|
      t.string :name
      t.text :description

      t.references :project, index: true, foreign_key: true
      t.timestamps null: false
    end

    create_table :tasks do |t|
      t.integer :status
      t.string :name
      t.text :description
      t.datetime :start_at
      t.datetime :end_at
      t.integer :duration_time

      t.references :list, index: true, foreign_key: true
      t.timestamps null: false
    end
  end

end
