Rails.application.routes.draw do
  resources :materials, :exercises, :questions

  get 'root', to: 'root#index'
end
