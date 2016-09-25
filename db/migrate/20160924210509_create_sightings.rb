class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string   :species, null: false
      t.integer  :count, null: false
      t.integer  :distance, null: false
      t.string   :observation_type, null: false
      t.string   :location, null: false
      t.string   :habitat, null: false
      t.string   :vegetation, null: false
      t.references :checklist
      t.references :user

      t.timestamps
    end
  end
end
