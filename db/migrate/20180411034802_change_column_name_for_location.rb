class ChangeColumnNameForLocation < ActiveRecord::Migration[5.1]
  def change
    rename_column :locations, :lat, :latitude
    rename_column :locations, :lng, :longitude
  end
end
