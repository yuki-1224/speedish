class AddReserveIdToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :reserve_id, :integer
  end
end
