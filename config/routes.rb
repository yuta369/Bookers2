Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: "homes#top"
  get "home/about", to: "homes#about", as: "about"
  resources :users, only: [:index, :show, :edit, :update]
  resources :books do
    resource :favorite, only: [:create, :destroy]
  end
end