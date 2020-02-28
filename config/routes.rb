Rails.application.routes.draw do
  
  devise_for :users
  resources :articles do
    resources :comments
  end
  authenticated :user do
    root "articles#index"
  end

  root "articles#welcome"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
