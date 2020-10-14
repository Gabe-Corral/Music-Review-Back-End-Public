class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :img
      t.integer :review_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
