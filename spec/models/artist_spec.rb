require 'rails_helper'

RSpec.describe Artist, type: :model do
  context 'Check if Artist name is validated properly' do
    before(:each) do
      @artist = Artist.new(
        artist_name: ''
      )
    end
    it 'Artist name is not empty' do
      expect(@artist).to_not be_valid
      @artist.artist_name = 'Simple name'
      expect(@artist).to be_valid
    end

    it 'Artist name has a name maximum 30 characters' do
      sample_string_with_30_characters = 'fvsmK3zDVCRLbfw7L72Wrg3tqXADwc'
      sample_string_with_31_characters = 'YshFK8TBDvt8GdSPmb1ZMa9yR2HgAIs'

      @artist.artist_name = sample_string_with_31_characters
      expect(@artist).to_not be_valid
      @artist.artist_name = sample_string_with_30_characters
      expect(@artist).to be_valid
      end

  context 'when data is provided' do
    it 'saves the instance' do
      @artist.artist_name = "sample name"
      expect((@artist).save!).to eq true
      end
  end


  end
end

