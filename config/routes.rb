Demoordinator::Application.routes.draw do
  resources :address_1s

  resources :demos

  resources :orgs

  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  root :to => "home#index"
end