class CreateDetailOrders < ActiveRecord::Migration
  def change
    create_table :detail_orders do |t|
      t.integer :article_id
      t.integer :amount
      t.integer :order_id

      t.timestamps
    end
  end
end
