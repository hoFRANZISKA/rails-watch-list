Rails.application.routes.draw do
  root to: "lists#index"
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end



  # my solution on Thursday:
  # resources :lists, only: [:index, :show, :new, :create] do
  #   resources :bookmarks, only: [:new, :create]
  # end
  # resources :bookmarks, only: [:destroy]
  # get "up" => "rails/health#show", as: :rails_health_check

