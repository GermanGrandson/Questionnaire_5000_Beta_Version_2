Rails.application.routes.draw do

#Root
root to: "home#index"

#Quiz
resources :quizzes
resources :answers
# get '/quiz', to:'quiz#new', as: :quiz
post '/questioninaire', to:'quizzes#create_questionnaire', as: :create_quest
get '/completed/:id', to:'quizzes#completed', as: :completed

get '/results', to:'results#index', as: :results
get '/results-score/:id', to:'results#show', as: :results_score

end
