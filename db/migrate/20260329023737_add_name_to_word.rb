class AddNameToWord < ActiveRecord::Migration[8.1]
  def change
    add_column :words, :name, :string
  end
end
