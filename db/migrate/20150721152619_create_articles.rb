class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :sku
      t.string :description
      t.decimal :price, precision: 10, scale: 2, :default=>0
      t.integer :amount
      t.integer :category_id
      t.integer :subcategory_id

      t.timestamps
    end
  end
end
