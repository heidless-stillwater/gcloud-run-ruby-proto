class AddOwnerToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :owner, :string
  end
end
