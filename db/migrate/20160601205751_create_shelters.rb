class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.text :name
      t.text :address
      t.text :phone

      t.timestamps null: false
    end
  end
end
