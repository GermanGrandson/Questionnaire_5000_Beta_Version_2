class ResultsController < ApplicationController
  before_action :set_results, only: [:show]

  def index
    @quizzes = Quiz.all
  end

  def show
    @users = @quiz.users.all
    @questions = @quiz.questions
  end

  private

  def set_results
    @quiz = Quiz.find(params[:id])
  end

end
