class AddIsDeletedToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :is_deleted, :boolean
  end
end
