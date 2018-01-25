class ReadersForeignKeyCheckouts < ActiveRecord::Migration[5.1]
  def change
    remove_column :checkouts, :person, :string
    add_column :checkouts, :reader_id, :integer, null: false
  end
end
