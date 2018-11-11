class CreateTrees < ActiveRecord::Migration[5.2]
  def change
    create_table :trees do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.integer :zipcode
      t.string :address
      t.string :health
      t.string :status
      t.integer :tree_id

      t.timestamps
    end
  end
end
