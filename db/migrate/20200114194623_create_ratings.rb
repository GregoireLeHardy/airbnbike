class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :stars
      t.string :description
      t.integer :booking_id
      t.integer :user_id

      t.timestamps
    end
  end
end
