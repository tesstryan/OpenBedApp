class AddLoginToShelters < ActiveRecord::Migration
  def change
    add_column :shelters, :email, :string
    add_column :shelters, :password_digest, :string
  end
end
