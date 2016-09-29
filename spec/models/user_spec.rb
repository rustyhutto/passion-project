require_relative "../spec_helper"

describe User do
  describe 'associations' do
    # before(:each) do
    #   user = User.create(username: "Rusty",
    #                        email: "fake@fake.com",
    #                        password: "123")

    #   yosemite = Checklist.create(list_name: "Yosemite",
    #                                 location: "Yosemite National Park",
    #                                 datetime: "2001-02-03T00:00:00+00:00",
    #                                 user_id: user.id)

    #   chickadee = Sighting.create(species: "Black-capped Chickadee",
    #                                 count: 2,
    #                                 distance: 120,
    #                                 observation_type: "v",
    #                                 location: "Near half dome",
    #                                 habitat: "Conifer Forest",
    #                                 vegetation: "Ponderosa Pine",
    #                                 checklist_id: yosemite.id,
    #                                 user_id: user.id)

    # end

    it "has a checklist" do
      user = User.new(username: "Rusty",
                           email: "fake@fake.com",
                           password: "123")

      expect(user.checklists).to match_array [yosemite]
    end
  end
end
