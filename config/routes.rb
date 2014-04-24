Demoordinator::Application.routes.draw do
  resources :address_1s


  resources :demos

  resources :orgs do
    resources :demos
  end

  devise_for :users, :controllers => {:registrations => "registrations"}
  # resources :users
  resources :users do
    resources :demos
    # resources :orgs
  end

  root :to => "home#index"
end