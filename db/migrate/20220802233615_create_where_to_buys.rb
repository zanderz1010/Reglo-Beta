class CreateWhereToBuys < ActiveRecord::Migration[6.0]
  def change
    create_table :where_to_buys do |t|
      t.integer :gift_id
      t.integer :store_id

      t.timestamps
    end
  end
end
