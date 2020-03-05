class ReameSalesAtatusColumnToItems < ActiveRecord::Migration[5.2]
  def change
  	rename_column :items, :sales_atatus, :sales_status
  end
end
