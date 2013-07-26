class AddLecturerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lecturer, :boolean, default: false
  end
end
