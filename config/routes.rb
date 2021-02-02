Rails.application.routes.draw do
  use_doorkeeper
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get 'student', to: 'student#basic_info'
 

  get 'question', to: 'question#index'

  get 'professor/subjects', to: 'professor/professor#subjects'
  post 'professor/question', to: 'professor/professor#create_question'

end
