class CreateVehicles < ActiveRecord::Migration[6.0]
  enable_extension 'uuid-ossp'
  def change
    create_table :vehicles,id: :uuid, default: -> { 'uuid_generate_v4()' }  do |t|
      t.timestamps
    end
  end
end
