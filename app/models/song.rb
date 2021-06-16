class Song < ApplicationRecord
    belongs_to :disc
    validates :song_name,presence: true, length: {maximum: 50}
    validates :track_number, numericality: {only_integer: true, greater_than: 0}
end
