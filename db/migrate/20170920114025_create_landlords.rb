class CreateLandlords < ActiveRecord::Migration[5.1]
  def change
    create_table :landlords do |t|
      t.string :company

      t.timestamps
    end
  end
end
