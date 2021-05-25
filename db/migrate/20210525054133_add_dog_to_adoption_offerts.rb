class AddDogToAdoptionOfferts < ActiveRecord::Migration[6.1]
  def change
    add_reference :adoption_offerts, :dog, null: false, foreign_key: true
  end
end
