class AddModerationToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :moderation, :boolean, default: false
  end
end
