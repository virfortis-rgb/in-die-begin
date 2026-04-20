class CreateDefinitions < ActiveRecord::Migration[8.1]
  def change
    create_table :definitions do |t|
      t.string :source
      t.string :translation
      t.string :sentence
      t.references :word, null: false, foreign_key: true

      t.timestamps
    end
  end
end
