require_relative "../spec_helper"

describe User do
  describe 'associations' do
    before(:each) do
      @user = User.first

      @yosemite = @user.checklists.create!(list_name: "Yosemite1",
                                    location: "Yosemite National Park",
                                    datetime: "2001-02-03T00:00:00+00:00")

      @chickadee = @yosemite.sightings.create!(species: "Black-capped Chickadee",
                                    count: 2,
                                    distance: 120,
                                    observation_type: "v",
                                    location: "Near half dome",
                                    habitat: "Conifer Forest",
                                    vegetation: "Ponderosa Pine")

    end

    it "has a checklist" do
      expect(@user.checklists).to include(@yosemite)
    end

    it "has a sighting" do
      expect(@user.sightings).to include(@chickadee)
    end

  end
end
