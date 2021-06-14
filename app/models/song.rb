class Song < ApplicationRecord
    belongs_to :disc
    validates :song_name, presence: true, length: {maximum: 50}
end
