class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.integer :rent_fee
      t.text :address
      t.integer :build_year
      t.text :remark

      t.timestamps
    end
  end
end
