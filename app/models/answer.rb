class Answer < ActiveRecord::Base

  #Associations
  # belongs_to :user
  # has_many :qand_as
  # has_many :questions, through: :qand_as
  belongs_to :question
  belongs_to :user


end
