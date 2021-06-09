class ArtistsDiscsAssociation < ActiveRecord::Migration[6.1]
  def change
    create_table :artist_discs do |t|
      t.belongs_to :artist, index: true
      t.belongs_to :disc, index: true
      t.timestamps
    end
  end
end
