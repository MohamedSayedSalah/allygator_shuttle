class AddIndexToVehicle < ActiveRecord::Migration[6.0]
  def change
    add_index :vehicles, :id
  end
end
