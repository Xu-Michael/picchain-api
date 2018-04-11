class AddNameAndPrizeColumnToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :name, :string
    add_column :locations, :prize, :string
  end
end
