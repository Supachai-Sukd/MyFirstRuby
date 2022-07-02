class RemoveTitleFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :title, :text
  end
end
