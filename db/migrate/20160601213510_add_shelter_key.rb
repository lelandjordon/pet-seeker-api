class AddShelterKey < ActiveRecord::Migration
  def change
    add_foreign_key :pets, :shelters
  end
end
