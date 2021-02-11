class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.integer :owner_id
      t.string :address
      t.integer :rooms
      t.integer  :sqmt
      t.integer  :floors
      t.boolean :air_cond
      t.decimal :price,  :precision => 9, :scale => 6
      t.integer :units
      t.integer :shops
      t.integer :parking
      t.string :type
      t.timestamps
    end
  end
end
