require 'rails_helper'

RSpec.describe Disc, type: :model do
  it "Disc name is not empty" do
    disc = Disc.new(
      disc_name: ''
    )
    expect(disc).to_not be_valid
    disc.disc_name = "Sample name"
    expect(disc).to be_valid
  end
  it "Disc name is not longer than 50" do
    sample_string_with_51_characters = "Cm1fNADAzzpMJxsQc7e4spTrh1GXyBeoNE8OyULGI2TD97e7vzB"
    disc = Disc.new(
      disc_name: sample_string_with_51_characters
    )
    expect(disc).to_not be_valid
    sample_string_with_50_characters = "ZuP6B0akyNFKEYem2mievAhe55NfQ31G2rTyA0MTyTn5i7pNg1"
    disc.disc_name = sample_string_with_50_characters
    expect(disc).to be_valid
  end
end
