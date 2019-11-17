class LastLocation < ActiveRecord::Migration[6.0]
  def change
    create_table :last_locations do |t|
      t.float :lng
      t.float :lat
      t.timestamp :at
      t.references :vehicle, type: :uuid, null: false, index: true
      t.timestamps
    end
    add_foreign_key :last_locations, :vehicles
  end
end
