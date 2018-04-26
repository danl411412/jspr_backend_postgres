class CreateHangouts < ActiveRecord::Migration[5.1]
  def change
    create_table :hangouts do |t|
      t.boolean :status
      t.string :location
      t.integer :hangout_time

      t.timestamps
    end
  end
end
