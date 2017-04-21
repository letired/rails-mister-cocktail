Rails.application.routes.draw do
  root "cocktails#index"
  resources :cocktails, only: [ :index, :show, :new, :create, :destroy ] do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [ :destroy ]
  mount Attachinary::Engine => "/attachinary"
end
