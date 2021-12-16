class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :thumbnail
      t.string :artist
      t.string :genre
      t.string :album
      t.string :mood
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end
