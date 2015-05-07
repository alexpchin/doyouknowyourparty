class CreatePromises < ActiveRecord::Migration
  def change
    create_table :promises do |t|
      t.references :party, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
