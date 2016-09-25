class Checklist < ActiveRecord::Base
  belongs_to :user
  has_many :sightings
end
