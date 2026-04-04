class ChangeWordMeaningToDefinitions < ActiveRecord::Migration[8.1]
  def change
    remove_column :words, :meaning, :string
    add_column :words, :definitions, :jsonb
  end
end
