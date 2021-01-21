Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  get 'api/v1/question', to: 'question#index'
  post 'api/v1/question', to: 'question#create'

end
