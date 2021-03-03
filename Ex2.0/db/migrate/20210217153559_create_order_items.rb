class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :item_price

      t.references :product, :order, foreign_key: true

      t.timestamps
    end
  end
end
