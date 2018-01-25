class AddFavoriteToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :favorite, :boolean
  end
end
