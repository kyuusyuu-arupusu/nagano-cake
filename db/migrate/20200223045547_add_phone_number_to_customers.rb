class AddPhoneNumberToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :phone_number, :string
  end
end
