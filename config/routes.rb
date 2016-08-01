Rails.application.routes.draw do

  resources :categories do
    resources :articles
  end

  resources :users, except: [ :index, :edit, :show, :update, :destroy ]
  resource :session, only: [ :new, :create, :destroy ]


  root 'categories#index'

end
