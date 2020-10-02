class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reserves do |t|
      t.integer :restaurant_id
      t.string :num_of_peo
      t.datetime :reserved_at
      t.timestamps
    end
  end
end
