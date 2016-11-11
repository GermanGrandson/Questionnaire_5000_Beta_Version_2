class AddNameToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :name, :string
    add_column :quizzes, :label, :string
  end
end
