class CreateSongsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :song_name
      t.integer :disc_id


      t.timestamps
    end
  end
end
