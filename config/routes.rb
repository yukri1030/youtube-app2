Rails.application.routes.draw do
  root 'top#index'
  resources :top do
    resources :messages, only: [:create]
  end

end
