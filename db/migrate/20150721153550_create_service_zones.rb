class CreateServiceZones < ActiveRecord::Migration
  def change
    create_table :service_zones do |t|
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
