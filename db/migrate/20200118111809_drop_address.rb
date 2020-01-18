class DropAddress < ActiveRecord::Migration[5.2]
  def change
    drop_table :addresses

    remove_column :bikes, :address_id

    add_column :bikes, :address, :string
    add_column :bikes, :latitude, :float
    add_column :bikes, :longitude, :float
  end
end
