Concore::Application.routes.draw do


  match '/tricks' => "tricks#index"

  resources :locations do
    resources :tricks do
      resources :trick_comments
    end
  end


  root :to => "home#index"
  resources :users, :only => [:index, :show, :edit, :update ]
  match '/auth/:provider/callback' => 'sessions#create'
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/auth/failure' => 'sessions#failure'
end
