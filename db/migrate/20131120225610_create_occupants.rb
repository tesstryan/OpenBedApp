class CreateOccupants < ActiveRecord::Migration
  def change
    create_table :occupants do |t|
      t.string :name
      t.string :sex
      t.integer :number_of_beds
      t.integer :shelter_id
    end
  end
end
