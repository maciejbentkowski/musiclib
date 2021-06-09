class Disc < ApplicationRecord
    has_many :artist_discs
    has_many :artists, :through => :artist_discs, dependent: :destroy
    has_many :songs, dependent: :destroy
end
