Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  devise_for :users

  root to: "pages#home"
  get "pages/about", to: "pages#about", as: :about
  resources :stories, only: [:index, :show] do
    resources :vocab, only: [:new, :create]
  end
  resources :vocab, only: [:show, :edit, :update, :destroy]
end
