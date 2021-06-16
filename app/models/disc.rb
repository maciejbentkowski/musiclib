class Disc < ApplicationRecord
    has_many :artist_discs
    has_many :artists, :through => :artist_discs
    has_many :songs, dependent: :destroy

    validates :disc_name, presence: true, length: {maximum: 50}
end
