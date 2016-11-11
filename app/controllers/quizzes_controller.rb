class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :update, :destroy, :completed]

  def new
    @quiz = Quiz.new
    @quiz.questions.build
  end

  def create
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @user = User.new

    #Builds User Answers x amount of times that a User has questions
    @quiz.questions.count.times {@user.answers.build}
    @questions = []

    #Itterates through Quiz questions and pushes each question into the questions array
    @quiz.questions.each do |question|
      @questions << question.text
    end

    #Inserts blank space into beginning of Array for Quesetion count in View Page when completing Questionnaire
    @questions.insert(0,'')
  end

  def create_questionnaire

    #Sets User.quiz_id with Quiz param
    @quiz = Quiz.find(params[:user][:quiz_id])
    @user = User.new(user_params)
    @user.quiz_id = @quiz.id
    @user.save

    #Itterates through nested answer params through the keys and values and pushes each answer into the Answers array
    @answers = []
    params[:user][:answers_attributes].each do |k,v|
      v.each do |a,b|
        @answers << b
      end
    end

    #Removes blank answer in last index of Answers array
    @answers.pop

    redirect_to completed_path(@quiz,@user)
  end

  def home
  end

  def completed
    @user = User.find(params[:id])
  end

  private

  def quiz_params
    params.require(:quiz).permit(:name, :label,  questions_attributes: [:id, :text, :_destroy], answers_attributes: [:id, :text, :_destroy])
  end

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, answers_attributes: [:id, :text, :_destroy])
  end

end
