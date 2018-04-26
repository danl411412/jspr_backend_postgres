class CreateUserHangouts < ActiveRecord::Migration[5.1]
  def change
    create_table :user_hangouts do |t|
      t.integer :host_id
      t.integer :guest_id
      t.integer :hangout_id
      t.integer :location_id

      t.timestamps
    end
  end
end
