class AddIdToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :answer_id, :integer
  end
end
