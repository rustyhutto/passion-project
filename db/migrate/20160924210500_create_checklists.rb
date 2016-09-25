class CreateChecklists < ActiveRecord::Migration
  def change
     create_table :checklists do |t|
      t.string    :list_name, null: false
      t.string    :location, null: false
      t.datetime  :datetime, null: false
      t.references :user, null: false

      t.timestamps
     end
  end
end
