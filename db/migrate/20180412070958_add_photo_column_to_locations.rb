class AddPhotoColumnToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :photo, :string
  end
end
