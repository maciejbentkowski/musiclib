class Artist < ApplicationRecord
    has_many :artist_disc_associations
    has_many :discs, through: :artist_disc_associations
end
