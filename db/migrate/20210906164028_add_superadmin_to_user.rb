class AddSuperadminToUser < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :superadmin, :boolean, :null => false, :default => false
  end

  def down
    remove_column :users, :superadmin
  end
end
