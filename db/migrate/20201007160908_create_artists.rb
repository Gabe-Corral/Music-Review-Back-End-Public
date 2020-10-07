class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.string :amazon
      t.string :spotify
      t.integer :album_id
      
      t.timestamps
    end
  end
end
