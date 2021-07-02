class Song < ApplicationRecord
    belongs_to :disc
    validates :song_name,presence: true, length: {maximum: 50}
    validates :track_number, numericality: {only_integer: true, greater_than: 0}, uniqueness: {scope: :disc, message: "Track number must be unique in disc"}

    def self.search(search)
        if search
            song = Song.find_by(song_name: search)
            if song
                self.where(id: song)
            else
                Song.all.order("RANDOM()")
            end
        else
            Song.all.order("RANDOM()")
    end
end
end
