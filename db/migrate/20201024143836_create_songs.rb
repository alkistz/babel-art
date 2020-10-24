class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist_name
      t.string :album_title
      t.text :lyrics_original
      t.text :lyrics_translated
      t.string :youtube_key
      t.string :link
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
