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

    resource :site_settings

    root :to => 'welcome_admin#index'
  end

end
