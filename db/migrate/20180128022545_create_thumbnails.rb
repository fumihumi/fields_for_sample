class CreateThumbnails < ActiveRecord::Migration[5.1]
  def change
    create_table :thumbnails do |t|
      t.text :image
      t.references :product , foreign_key: true , null: :false
      t.timestamps
    end
  end
end
