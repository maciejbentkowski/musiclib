class RemoveArtistDiscAssociationTable < ActiveRecord::Migration[6.1]
  def change
    drop_table(:artist_disc_associations)
  end
end
