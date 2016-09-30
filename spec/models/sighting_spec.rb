require_relative "../spec_helper"

describe Sighting do
  describe 'attributes' do
    let(:sighting) (Sighting.create(species: "Black-capped Chickadee",
                                    count: 2,
                                    distance: 120,
                                    observation_type: "v",
                                    location: "Near half dome",
                                    habitat: "Conifer Forest",
                                    vegetation: "Ponderosa Pine"))
    # expect
  end
end
