OpenBedApp::Application.routes.draw do

  # Routes for the Occupant resource:
  # CREATE
  get '/occupants/new', controller: 'occupants', action: 'new', :as => 'new_occupant'
  post '/occupants', controller: 'occupants', action: 'create'

  # READ
  get '/occupants', controller: 'occupants', action: 'index'
  get '/occupants/:id', controller: 'occupants', action: 'show', :as => 'occupant'

  # UPDATE
  get '/occupants/:id/edit', controller: 'occupants', action: 'edit', :as => 'edit_occupant'
  patch '/occupants/:id', controller: 'occupants', action: 'update'

  # DELETE
  delete '/occupants/:id', controller: 'occupants', action: 'destroy'
  #------------------------------

  #Routes for sessions
  get '/login', controller:'sessions', action: 'new', :as => 'new_session'
  post '/sessions', controller:'sessions', action: 'create'
  get '/logout', controller:'sessions', action: 'destroy'


  #Routes for the Homepage
  root 'pages#index'

  # Routes for the Shelter resource:
  # CREATE
  get '/shelters/new', controller: 'shelters', action: 'new', :as => 'new_shelter'
  post '/shelters', controller: 'shelters', action: 'create'

  # READ
  get '/shelters', controller: 'shelters', action: 'index'
  get '/shelters/:id', controller: 'shelters', action: 'show', :as => 'shelter'

  # UPDATE
  get '/shelters/:id/edit', controller: 'shelters', action: 'edit', :as => 'edit_shelter'
  patch '/shelters/:id', controller: 'shelters', action: 'update'

  # DELETE
  delete '/shelters/:id', controller: 'shelters', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
