class AddPersonToCheckouts < ActiveRecord::Migration[5.1]
  def change
    add_column :checkouts, :person, :string
  end
end
