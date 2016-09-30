require_relative "../spec_helper"

describe Checklist do
  describe 'associations' do
    before(:each) do
      @yosemite = Checklist.first

      @chickadee = @yosemite.sightings.first
    end

    it "has a sighting" do
      expect(@yosemite.sightings).to include(@chickadee)
    end

  end
end
