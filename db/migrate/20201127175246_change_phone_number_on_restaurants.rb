class ChangePhoneNumberOnRestaurants < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :phone_number, :string, default: '(111)222-3333'
  end
end
