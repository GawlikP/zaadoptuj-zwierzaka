class CreateAdoptionOfferts < ActiveRecord::Migration[6.1]
  def change
    create_table :adoption_offerts do |t|
      t.boolean :readed
      t.string :context
      t.references :receiver, null: false
      t.references :sender, null: false
      t.boolean :aproved
      t.string :answer

      t.timestamps
    end
  end



end
