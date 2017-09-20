class AddLandlordIdToProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :landlord_id, :integer
  end
end
