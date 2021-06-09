class Artist < ApplicationRecord
    has_many :artist_disc_associations, dependent: :destroy
    has_many :discs, through: :artist_disc_associations
end
