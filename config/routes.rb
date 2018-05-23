Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :zip_codes
  resources :questions do
  	resources :answers
  end
  resources :submitted_answers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'zip_codes#new'
end
