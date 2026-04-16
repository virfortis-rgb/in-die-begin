class AddSeenToVocabs < ActiveRecord::Migration[8.1]
  def change
    add_column :vocabs, :seen, :boolean
  end
end
