class AddIsbnToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :isbn_13, :string
  end
end
