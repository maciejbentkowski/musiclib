require 'rails_helper'

RSpec.describe Disc, type: :model do
  before(:each) do
    @disc = Disc.new(
      disc_name: ''
    )
  end

  it "Disc name is not empty" do
    expect(@disc).to_not be_valid
    @disc.disc_name = "Sample name"
    expect(@disc).to be_valid
  end
  it "Disc name is not longer than 50" do
    sample_string_with_51_characters = "Cm1fNADAzzpMJxsQc7e4spTrh1GXyBeoNE8OyULGI2TD97e7vzB"
    @disc.disc_name = sample_string_with_51_characters
    expect(@disc).to_not be_valid
    sample_string_with_50_characters = "ZuP6B0akyNFKEYem2mievAhe55NfQ31G2rTyA0MTyTn5i7pNg1"
    @disc.disc_name = sample_string_with_50_characters
    expect(@disc).to be_valid
  end
  context 'when data is provided' do
    it 'saves the instance' do
      @disc.disc_name = "sample disc name"
      expect((@disc).save!).to eq true
    end
      end
end
