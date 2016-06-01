class AddShelterIdToPets < ActiveRecord::Migration
  def change
    add_column :pets, :shelter_id, :integer
  end
end
