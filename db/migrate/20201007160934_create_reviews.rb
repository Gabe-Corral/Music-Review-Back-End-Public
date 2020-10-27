class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :album_id
      t.integer :rating
      t.integer :release_date
      t.string :artist
      t.string :title
      t.string :img
      t.string :songs, array: true, default: []
      t.text :review

      t.timestamps
    end
  end
end
