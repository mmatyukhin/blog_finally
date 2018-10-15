class AddLikedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :liked, :boolean
  end
end
