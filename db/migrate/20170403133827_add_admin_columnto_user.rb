class AddAdminColumntoUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    add_column :users, :username, :text
  end
end
