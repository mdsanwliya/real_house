Rails.application.routes.draw do
  devise_for :users
  resources :accommodations do
  	get :buy,  on: :member
  end
  root to: "accommodations#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
