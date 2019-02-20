Rails.application.routes.draw do
  resources :prisons, only: :show do
    resources :inmates, only: :create
  end
  resources :inmates, only: :destroy
end
