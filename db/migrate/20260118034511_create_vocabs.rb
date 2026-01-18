class CreateVocabs < ActiveRecord::Migration[8.1]
  def change
    create_table :vocabs do |t|
      t.integer :rating
      t.references :story, null: false, foreign_key: true
      t.references :word, null: false, foreign_key: true

      t.timestamps
    end
  end
end
