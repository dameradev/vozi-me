class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :origin
      t.string :destination
      t.datetime :date
      t.time :time
      t.integer :passengers
      t.integer :cost
      t.string :vechile
      t.integer :phone

      t.timestamps
    end
  end
end
