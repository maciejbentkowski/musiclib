class DropTracksTable < ActiveRecord::Migration[6.1]
  def change
    drop_table(:tracks)
  end
end
