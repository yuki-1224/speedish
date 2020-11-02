class AddUserIdToReserves < ActiveRecord::Migration[5.2]
  def change
    add_column :reserves, :user_id, :integer
  end
end
