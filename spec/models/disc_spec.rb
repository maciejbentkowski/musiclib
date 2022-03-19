require 'rails_helper'

RSpec.describe Disc, type: :model do
  let(:disc) {Disc.new(disc_name: 'sample', music_type: 'pop', premiere_date: DateTime.now)}
  context "when filling data is correct" do
  it "Disc name is not empty" do
    disc.disc_name = ''
    expect(disc).to_not be_valid
    disc.disc_name = "Sample name"
    expect(disc).to be_valid
  end
  it "Disc name is not longer than 50" do
    sample_string_with_51_characters = "Cm1fNADAzzpMJxsQc7e4spTrh1GXyBeoNE8OyULGI2TD97e7vzB"
    disc.disc_name = sample_string_with_51_characters
    expect(disc).to_not be_valid
    sample_string_with_50_characters = "ZuP6B0akyNFKEYem2mievAhe55NfQ31G2rTyA0MTyTn5i7pNg1"
    disc.disc_name = sample_string_with_50_characters
    expect(disc).to be_valid
  end
  it "Music type is present" do
  disc.music_type = ''
  expect(disc).to_not be_valid
  disc.music_type = 'pop'
  expect(disc).to be_valid
end
end
  context 'when data is provided' do
    it 'saves the instance' do
      disc.disc_name = "sample disc name"
      expect((disc).save!).to eq true
    end
    end
end

