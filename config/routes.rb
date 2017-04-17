Rails.application.routes.draw do
    namespace :admin do
        resources :products
        resources :carts
    end

    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'products#index'
    resources :products

      resources :products do
    member do
      post :add_to_cart
    end
  end
end
