class AddQaIdToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :qand_a_id, :integer
  end
end
