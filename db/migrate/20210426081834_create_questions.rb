class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :dog, null: false, foreign_key: true
      t.text :question
      t.boolean :hiden
      t.boolean :blocked
      t.boolean :reported

      t.timestamps
    end
  end
end
