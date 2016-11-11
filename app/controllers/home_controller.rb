class HomeController < ApplicationController

  #Shows all Questionnaires created
  def index
    @quizzes = Quiz.all
  end

end
