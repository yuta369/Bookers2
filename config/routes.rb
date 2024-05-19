Rails.application.routes.draw do
  resources :users, only: [:index, :show, :edit]
  resources :books
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "homes#top"
  get "home/about", to: "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end