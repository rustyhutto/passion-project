class User < ActiveRecord::Base
  has_many :checklists
  has_many :sightings, through: :checklists
end
