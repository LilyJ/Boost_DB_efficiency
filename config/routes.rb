Karmaville::Application.routes.draw do
  resources :users, :only => [:index,  :show]

  root :to => 'users#index'
  # match '/:page' => 'users#index'
end
