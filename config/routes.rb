Rails.application.routes.draw do
  use_doorkeeper
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'student', to: 'student#basic_info'
  get 'field', to: 'field#index'
  get 'subject', to: 'subject#index'
  get 'lesson', to: 'lesson#index'
  get 'exam', to: 'exam#index'
  get 'video', to: 'video#index'
  post 'commentary', to: 'commentary#comment_question'
  post 'question/answer', to: 'question#answer_question'

  post 'potential_client', to: 'potential_client#create'

  post 'juno_payment_hook_x0257', to: 'juno#index'

  get 'professor/subjects', to: 'professor/professor#subjects'
  post 'professor/question', to: 'professor/professor#create_question'

end
