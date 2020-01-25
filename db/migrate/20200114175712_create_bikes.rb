class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.integer :user_id
      t.string :address_id
      t.string :status, default: 'available'

      t.timestamps
    end
  end
end
