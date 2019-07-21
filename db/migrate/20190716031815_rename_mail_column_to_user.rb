class RenameMailColumnToUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users,  :email, :mail
  end
end
