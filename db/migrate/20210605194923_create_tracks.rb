class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.string :track_name
      t.belongs_to :disc, index: true, foreign_key: true

      t.timestamps
    end
  end
end
