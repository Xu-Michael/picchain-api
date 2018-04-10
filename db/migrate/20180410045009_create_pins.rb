class CreatePins < ActiveRecord::Migration[5.1]
  def change
    create_table :pins do |t|
      t.string :image
      t.integer :upvotes
      t.references :location, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
