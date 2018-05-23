Rails.application.routes.draw do
  resources :zip_codes
  resources :questions do
  	resources :answers
  end
  resources :submitted_answers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'zip_codes#new'
end
