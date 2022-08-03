class AddColumnsToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :completed, :boolean
    add_column :books, :chapters, :integer
    add_column :books, :read_chapters, :integer
  end
end
