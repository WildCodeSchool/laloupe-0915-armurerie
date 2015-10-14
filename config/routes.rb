Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#index'
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  post '/users/destroy/:id' => 'users#destroy', as: :delete_user
  get '/users/edit/:id' => 'users#edit', as: :edit_user
  post '/users/update/:id' => 'users#update', as: :update_user
  resources :users


  get '/classes/index' => 'classes#index'
  get '/classes/new' => 'classes#new'
  post '/classes' => 'classes#create'
  post '/classes/destroy/:id' => 'classes#destroy', as: :delete_classe
  get '/classes/edit/:id' => 'classes#edit', as: :edit_classe
  post '/classes/update/:id' => 'classes#update', as: :update_classe
  resources :classes

  get 'equipments/index'
  get 'equipments/new' => 'equipment#new'
  post '/equipments' => 'equipment#create'
  resources :equipments
  
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
