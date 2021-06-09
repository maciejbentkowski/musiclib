class AddForeignKeyForSongs < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :songs, :discs
  end
end
