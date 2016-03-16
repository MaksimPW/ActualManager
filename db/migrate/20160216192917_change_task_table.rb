class ChangeTaskTable < ActiveRecord::Migration
  def up
    change_table :tasks do |t|
      t.change :name, :string
      t.change :description, :text
    end
  end

  def down
    change_table :tasks do |t|
      t.change :name, :text
      t.change :description, :string
    end
  end
end
