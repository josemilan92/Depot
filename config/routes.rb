Rails.application.routes.draw do
  get 'form/input'

  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login'=> :new
    post 'login' => :create
    delete 'logout'=> :destroy
  end

  resources :users
  resources :names
  resources :products do
    get :download, :on => :member
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      get :who_bought, on: :member
  end

  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    root 'store#index', as: 'store_index', via: :all
  end

  resource :products do
    get :who_bought, on: :member
  end
end
