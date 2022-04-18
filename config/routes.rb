Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items, only: [:index]
  resources :users do 
    collection do
      post 'cart'
      get 'thanks'
    end
  end

end
