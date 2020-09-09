class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.integer :no
      t.string :name
      t.string :railway_name
      t.integer :min_to_walk
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
