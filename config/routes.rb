Rails.application.routes.draw do
  resources :materials, :exercises

  get 'root', to: 'root#index'
end
