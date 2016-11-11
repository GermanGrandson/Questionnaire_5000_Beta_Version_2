class Quiz < ActiveRecord::Base

  #Assocations
  # belongs_to :user
  # has_many :qand_as
  has_many :questions
  has_many :answers, through: :users
  # belongs_to :user
  has_many :users
  # has_many :answers

  #Nested Form
  accepts_nested_attributes_for :questions, :answers, reject_if: :all_blank, allow_destroy: true

end
