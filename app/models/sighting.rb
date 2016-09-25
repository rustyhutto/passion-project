class Sighting < ActiveRecord::Base
  belongs_to :checklist
  belongs_to :user, through: :checklist
end
