class QandA < ActiveRecord::Base

  #Associations
  # belongs_to :answer
  belongs_to :question
  has_many :answers

  accepts_nested_attributes_for :answers, allow_destroy: true
end
