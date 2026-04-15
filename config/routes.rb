Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "pages#home"
  get "pages/about", to: "pages#about", as: :about
  resources :stories, only: [:index, :show] do
    resources :vocab, only: [:new, :create]
  end
  resources :vocab, only: [:show, :edit, :update, :destroy]
end
