require_relative "../spec_helper"

describe Sighting do
    let (:sighting) {Sighting.create(species: "Black-capped Chickadee",
                                    count: 2,
                                    distance: 120,
                                    observation_type: "v",
                                    location: "Near half dome",
                                    habitat: "Conifer Forest",
                                    vegetation: "Ponderosa Pine")}
  it "has a species" do
    expect(sighting.species).to eq("Black-capped Chickadee")
  end

  it "has a distance" do
    expect(sighting.distance).to equal(120)
  end
end
