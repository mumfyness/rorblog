class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :wedding
      t.string :photographer
      t.string :image

      t.timestamps
    end
  end
end
