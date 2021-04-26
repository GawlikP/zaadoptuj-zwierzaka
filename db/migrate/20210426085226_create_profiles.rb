class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :apartment
      t.integer :garden
      t.integer :age
      t.integer :animal_experience
      t.integer :time_to_spent
      t.integer :finance
      t.text :description

      t.timestamps
    end
  end
end
