class CreateStories < ActiveRecord::Migration[8.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :author
      t.text :content
      t.integer :progress
      t.boolean :completed

      t.timestamps
    end
  end
end
