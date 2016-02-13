class ChangeListsIdParentAndAddReference < ActiveRecord::Migration
  def up
    add_reference :lists, :project, index: true
  end
  def down
    remove_column :lists, :id_parent
  end
end
