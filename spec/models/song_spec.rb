require 'rails_helper'

RSpec.describe Song, type: :model do
  let(:sample_disc) { Disc.first_or_create!(disc_name: 'Sample disc name', music_type: 'pop')}
  before(:each) do
    @song = Song.new(song_name: '',track_number: 1, disc_id: sample_disc.id)
    @song.save
  end
  context "Song name validations" do

  it "Song has a name" do
  expect(@song).to_not be_valid
  @song.song_name = 'sample name'
  expect(@song).to be_valid
  end

  it "Song name is not longer than 50" do
    sample_string_with_51_characters ="xRzahEV2xn7fBykp4hcoVvG84vjG4rJfz5gzK59H6l6HslbFoyG"
    @song.song_name = sample_string_with_51_characters
    expect(@song).to_not be_valid
    sample_string_with_50_characters ="RJNUpC6tsGNAcQ5HALPlwkDYrZXXpxvWNFyTX55XeWC0Cphxel"
    @song.song_name = sample_string_with_50_characters
    expect(@song).to be_valid
  end

  it "Song belongs to disc" do
    expect(@song.disc_id).to eq(sample_disc.id)
  end
  context "Track number validation" do
    it "Song has a number" do
      expect(@song.track_number).to be_truthy
    end



  end

  end
  context 'when data is provided' do
    it 'saves the instance' do
      @song.song_name = "sample song name"
      expect((@song).save!).to eq true
    end
  end
end
