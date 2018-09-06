class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :avatar
      t.text :description
      t.references :artist

      t.timestamps
    end
  end
end
