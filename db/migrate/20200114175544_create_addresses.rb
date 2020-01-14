class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.integer :address_num
      t.integer :post_code
      t.string :city

      t.timestamps
    end
  end
end
