POS::Application.routes.draw do


  root to: 'sessions#index'
  #change later to sessions#index where there will be a button to click to sign in
  
  #order of the resources and gets matter, put all relating gets above the resource
  get 'sessions/main'
  
  match '/signout', to: 'sessions#destroy', via: :delete
  
  resources :sessions, only: [:index, :create, :destroy]
  
  resources :order_to_warehouses

  match '/warehouse_product_infos/:id/quantity', :to => 'warehouse_product_infos#quantity', :as => 'quantity'
  resources :warehouse_product_infos

  resources :warehouses

  resources :shelf_product_infos

  resources :shelves

  resources :users

  get '/store_product_infos/:id/price', :to => 'store_product_infos#price', :as => 'price'
  match '/store_product_infos/:id/quantity', :to => 'store_product_infos#quantity', :as => 'quantity'
  resources :store_product_infos

  resources :stores

  resources :products

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
