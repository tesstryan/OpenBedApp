class AddWebsiteToShelters < ActiveRecord::Migration
  def change
    add_column :shelters, :website, :string
  end
end
