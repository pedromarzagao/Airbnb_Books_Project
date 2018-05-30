class AddOwnerBioToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :owner_bio, :text
  end
end
