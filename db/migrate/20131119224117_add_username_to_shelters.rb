class AddUsernameToShelters < ActiveRecord::Migration
  def change
    add_column :shelters, :username, :string
  end
end
