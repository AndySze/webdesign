Cunlin::Application.routes.draw do

  resources :categories


  resources :posts


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  namespace :admin do

    resources :users
    get "homepages"  => "homepages#index"
    resource :homepages

    root :to => 'home#index'
  end

end
