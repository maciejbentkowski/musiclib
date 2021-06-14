class AddTrackNumberToSong < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :track_number, :integer
  end
end
