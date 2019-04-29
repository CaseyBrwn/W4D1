Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :destroy, :update, :index, :show]
  
  resources :user do
    #resources :artwork_shares, only: [:create, :destroy]
    resources :artworks, only: [:index]
  end

  resources :artworks, only: [:create, :destroy, :update, :show]
  
  # resources :artworks do
  #   resources :artwork_shares, only: [:create, :destroy]
  # end
end
