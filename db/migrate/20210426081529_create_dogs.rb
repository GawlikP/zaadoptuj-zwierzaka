class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.datetime :birth_date
      t.string :breed
      t.text :description
      t.boolean :gender
      t.integer :vaccination
      t.integer :size
      t.decimal :weight
      t.decimal :height
      t.integer :apartment_size
      t.integer :childrens
      t.integer :time_to_spent
      t.integer :owner_with_dogs
      t.integer :animals
      t.integer :noise
      t.integer :energy
      t.integer :disposition
      t.text :localization
      t.integer :coat
      t.integer :drooling
      t.integer :obedience
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
