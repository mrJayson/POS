POSV2::Application.routes.draw do
  

  root :to => 'sessions#signin'
  
  get 'sessions/warehouse_main'
  
  get 'sessions/store_main'

  get 'sessions/signin'
  
  get 'sessions/signout'
  
  #post 'transactions/scan_item'
  get '/transactions/:id/scan_item', :to => 'transactions#scan_item', :as => 'transactions_scan_item'
  
  #post 'transactions/remove_item'
  get '/transactions/:id/remove_item', :to => 'transactions#remove_item', :as => 'transactions_remove_item'
 
  #get 'transactions/refund'
  
  #get 'transactions/refund_product'
  
  post 'transactions/scan_member'
  
  put 'transactions/void_transaction'
  
  resources :transactions
  
  resources :members

  resources :sessions, :only => [:create, :destroy]

  resources :products, :only => [:index, :create, :new]
  
  get '/stocks/:id/quantity', :to => 'stocks#quantity', :as => 'quantity_stock'
  
  get '/stocks/:id/product_movement', :to => 'stocks#product_movement', :as => 'movement_stock'
  
  resources :stocks
  
  get 'locations/shelf'
  
  get 'locations/store'
  
  get 'locations/warehouse'
  
  get '/locations/:id/order', :to => 'locations#order', :as => 'order_location'
  
  get '/locations/:id/order_movement', :to => 'locations#order_movement', :as => 'order_movement_location'
  
  resources :locations
  
  
  get 'employees/:id/promote_employee', :to => 'employees#promote_employee', :as => 'employee_status'
  
  resources :employees
  
  resources :members
  
  #resources :transactions, :except => [:edit, :update]

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
