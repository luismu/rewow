Rails.application.routes.draw do
  resources :medical_services
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "pages#index"
end
