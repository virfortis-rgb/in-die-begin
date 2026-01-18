class CreateWords < ActiveRecord::Migration[8.1]
  def change
    create_table :words do |t|
      t.string :meaning

      t.timestamps
    end
  end
end
