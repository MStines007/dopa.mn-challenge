require 'rails_helper'

RSpec.describe Place, type: :model do

  let(:place){Place.new("Shake Shack", "at E 23rd St", "http://www.shakeshack.com", "Burger Joint", "4c2bccc7d1a10f475a88f864", "(212) 889-6600", "@shakeshack")}

  it "has a phone number" do
    expect(place.phone_num).to include("(212) 889-6600")
  end

  it "has a twitter handle" do
    expect(place.twitter).to eq("@shakeshack")
  end

  it "has a URL" do
    expect(place.url).to eq("http://www.shakeshack.com")
  end

  it "has a name" do
    expect(place.name).to eq("Shake Shack")
  end

  it "has a category" do
    expect(place.category).to eq("Burger Joint")
  end

  it "has a foursquare ID" do
    expect(place.foursquare_id).to eq ("4c2bccc7d1a10f475a88f864")
  end
end
