class RemoveUserId < ActiveRecord::Migration[5.1]
  def change
    remove_column :tenants, :user_id, :integer
  end
end
