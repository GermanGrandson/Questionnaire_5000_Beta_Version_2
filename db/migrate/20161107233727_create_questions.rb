class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :text
      t.integer :answer_id
      t.integer :quiz_id

      t.timestamps null: false
    end
  end
end
