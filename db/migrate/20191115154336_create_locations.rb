class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.float :lng
      t.float :lat
      t.timestamp :at
      t.references :vehicle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
