class AddLatlongToShelters < ActiveRecord::Migration
  def change
    add_column :shelters, :latitude, :decimal
    add_column :shelters, :longitude, :decimal
  end
end
