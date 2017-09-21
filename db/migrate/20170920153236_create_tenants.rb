class CreateTenants < ActiveRecord::Migration[5.1]
  def change
    create_table :tenants do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.integer :user_id

      t.timestamps
    end
  end
end
