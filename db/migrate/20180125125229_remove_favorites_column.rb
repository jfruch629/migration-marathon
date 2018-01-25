class RemoveFavoritesColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :favorite
  end
end
