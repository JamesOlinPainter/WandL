Rails.application.routes.draw do
  get 'pages/index'

  resources :lessons do
    resources :problems
  end

  root 'pages#index'
end
