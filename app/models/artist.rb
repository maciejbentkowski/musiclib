class Artist < ApplicationRecord
    has_many :artist_discs, dependent: :destroy
    has_many :discs, :through => :artist_discs, dependent: :destroy
    validates :artist_name, presence: true, length: {maximum: 30}

end
