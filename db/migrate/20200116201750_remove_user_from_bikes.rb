class RemoveUserFromBikes < ActiveRecord::Migration[5.2]
  def change
    remove_column :bikes, :user_id, :integer
  end
end
