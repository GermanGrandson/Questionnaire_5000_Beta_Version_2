class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def show
    @answer = Answer.all
  end

  def create
  end

end
