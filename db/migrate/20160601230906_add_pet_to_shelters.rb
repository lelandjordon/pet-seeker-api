class AddPetToShelters < ActiveRecord::Migration
  def change
    add_column :shelters, :pet, :string
  end
end
