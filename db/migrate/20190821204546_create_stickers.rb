class CreateStickers < ActiveRecord::Migration[6.0]
  def change
    create_table :stickers do |t|
      t.string :icon
      t.boolean :rating
      t.references :goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
