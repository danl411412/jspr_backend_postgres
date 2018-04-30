class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :userPassword
      t.string :home_address
      t.integer :phone_number
      t.string :wifi_name
      t.string :wifi_password

      t.timestamps
    end
  end
end
