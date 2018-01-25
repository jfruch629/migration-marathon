class CreateCheckouts < ActiveRecord::Migration[5.1]
  def change
    create_table :checkouts do |t|
      t.integer :book_id, null: false
      t.integer :quantity, null: false
    end
  end
end
