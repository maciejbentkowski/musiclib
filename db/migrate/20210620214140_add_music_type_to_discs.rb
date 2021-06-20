class AddMusicTypeToDiscs < ActiveRecord::Migration[6.1]
  def change
    add_column :discs, :music_type, :string
  end
end
