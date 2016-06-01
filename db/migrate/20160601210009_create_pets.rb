class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.text :species
      t.text :breed
      t.integer :age
      t.text :name
      t.text :photo_url
      t.integer :shelter_id
      t.timestamps null: false
    end
  end
end
