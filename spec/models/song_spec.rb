require 'rails_helper'

RSpec.describe Song, type: :model do
  disc = Disc.first_or_create!(disc_name: 'sample', music_type: 'pop', premiere_date: '2019-02-02')
  song = Song.new(
    song_name: 'Sample song',
    disc_id: disc.id,
    track_number: 12
  )
  it "Song has a name" do
    song.song_name = ''
    expect(song).to_not be_valid
    song.song_name = 'sample name'
    expect(song).to be_valid
  end
  it "Song name is not longer than 50" do
    sample_string_with_51_characters ="xRzahEV2xn7fBykp4hcoVvG84vjG4rJfz5gzK59H6l6HslbFoyG"
    song.song_name = sample_string_with_51_characters
    expect(song).to_not be_valid
    sample_string_with_50_characters ="RJNUpC6tsGNAcQ5HALPlwkDYrZXXpxvWNFyTX55XeWC0Cphxel"
    song.song_name = sample_string_with_50_characters
    expect(song).to be_valid
  end
  it "Song belongs to disc" do
    expect(song.disc_id).to eq(disc.id)
  end
  it "Song has a number" do
    expect(song.track_number).to be_truthy
  end
  it 'saves the instance' do
    expect((song).save!).to eq true
  end

end
