require 'rails_helper'

RSpec.describe Song, type: :model do
  sample_disc = Disc.first_or_create!(disc_name: 'Sample disc name')

  it "Song has a name" do
    song = Song.new(
      song_name: '',
      disc_id: sample_disc.id
    )
  expect(song).to_not be_valid
  song.song_name = 'sample name'
  expect(song).to be_valid
  end
end
