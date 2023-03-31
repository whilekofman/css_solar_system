class Add < ActiveRecord::Migration[7.0]
  def change
    add_column :planets, :origin_of_name, :string
    add_column :moons, :origin_of_name, :string

    add_column :planets, :first_discovery, :integer
    add_column :moons, :first_discovery, :integer

    add_column :planets, :discovered_by, :text
    add_column :moons, :discovered_by, :text
  end
end
