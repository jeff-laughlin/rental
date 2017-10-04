class RemoveNamesFromTenants < ActiveRecord::Migration[5.1]
  def change
    remove_column :tenants, :first_name, :string
    remove_column :tenants, :last_name, :string
    remove_column :tenants, :phone_number, :string
  end
end
