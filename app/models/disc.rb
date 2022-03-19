class Disc < ApplicationRecord
    has_many :artist_discs
    has_many :artists, :through => :artist_discs
    has_many :songs, dependent: :destroy
    has_one_attached :image

    validates :disc_name, presence: true, length: {maximum: 50}
    validates :music_type, presence: true
    validates :premiere_date, presence: true
end
