class Disc < ApplicationRecord
    has_many :artist_disc_associations
    has_many :artists, through: :artist_disc_associations
    has_many :tracks
end
