class RenameRemmemberTokenColumnRememberToUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :remmember_token, :remember_token
  end
end
