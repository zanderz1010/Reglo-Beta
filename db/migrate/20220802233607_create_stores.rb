class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :website
      t.string :location

      t.timestamps
    end
  end
end
