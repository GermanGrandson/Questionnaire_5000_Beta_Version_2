class User < ActiveRecord::Base

  #Associations
  # has_many :quizzes
  # has_many :questions, through: :quizzes
  # has_many :answers, through: :qand_as
  has_many :answers
  belongs_to :quiz
  # has_many :questions, through: :quizzes


  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true
end
