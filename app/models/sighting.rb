class Sighting < ActiveRecord::Base
  belongs_to :checklist
  belongs_to :user, class_name: :checklist
end
