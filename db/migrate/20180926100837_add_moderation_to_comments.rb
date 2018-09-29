class AddModerationToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :moderation, :boolean
    add_reference :comments, :user, foreign_key: true
  end
end
