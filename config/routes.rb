Inventory::Application.routes.draw do
  authenticated :user do
    #root :to => 'home#index'
  end
  #root :to => "home#index"
  devise_for :users
  resources :users

  root :to => "inventories#index"
  get '/signin' => 'sessions#new'
  delete'/signout' => 'sessions#destroy'
  
  resources :inventories do
    collection do
      get :list
    end
  end
  
  resources :sessions

end