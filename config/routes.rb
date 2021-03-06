Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :landlords
  resources :tenants
  resources :static
  resources :properties do
    resources :units
  end
  root :to => "static#home"
end
