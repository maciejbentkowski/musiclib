class ArtistDisc < ApplicationRecord
    belongs_to :artist, dependent: :destroy
    belongs_to :disc, dependent: :destroy
end
