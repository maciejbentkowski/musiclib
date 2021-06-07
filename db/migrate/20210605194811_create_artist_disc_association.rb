class CreateArtistDiscAssociation < ActiveRecord::Migration[6.1]
  def change
    create_table :artist_disc_associations do |t|
      t.belongs_to :artist
      t.belongs_to :patient
      t.timestamps
    end
  end
end
