class RemoveOwnerFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :owner
  end
end
