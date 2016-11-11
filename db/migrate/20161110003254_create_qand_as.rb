class CreateQandAs < ActiveRecord::Migration
  def change
    create_table :qand_as do |t|
      t.integer :answer_id
      t.integer :question_id
      t.integer :quiz_id

      t.timestamps null: false
    end
  end
end
