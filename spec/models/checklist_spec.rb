require_relative "../spec_helper"

describe Checklist do
  describe 'associations' do
    before(:each) do
      @yosemite = Checklist.first

      @chickadee = @yosemite.sightings.create!(species: "Black-capped Chickadee",
                                    count: 2,
                                    distance: 120,
                                    observation_type: "v",
                                    location: "Near half dome",
                                    habitat: "Conifer Forest",
                                    vegetation: "Ponderosa Pine")

    end

    it "has a sighting" do
      expect(@yosemite.sightings).to include(@chickadee)
    end

  end
end
