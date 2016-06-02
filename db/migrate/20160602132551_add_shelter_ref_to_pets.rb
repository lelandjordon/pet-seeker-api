class AddShelterRefToPets < ActiveRecord::Migration
  def change
    add_reference :pets, :shelter, index: true, foreign_key: true
  end
end
