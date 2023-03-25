class CreateStars < ActiveRecord::Migration[7.0]
  def change
    create_table :stars do |t|
      t.string :name, null: false
      t.text :facts, null: false, array: true, default: []
      t.float :diameter, null: false
      t.float :temperature, null: false
      t.float :mass, null: false
      t.timestamps
    end
  end
end