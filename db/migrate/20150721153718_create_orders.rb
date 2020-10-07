class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :address
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
