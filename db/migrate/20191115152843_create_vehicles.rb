class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles,id:false do |t|
      t.string :id,
      t.timestamps
    end
  end
end
