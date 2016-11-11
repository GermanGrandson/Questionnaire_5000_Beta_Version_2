class Question < ActiveRecord::Base

  #Assocations
  belongs_to :quiz
  # belongs_to :answer
  # has_many :qand_as
  # has_many :answers, through: :qand_as
  has_many :answers


end
