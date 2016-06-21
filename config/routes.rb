Rails.application.routes.draw do
  get 'clients/creat'

  root 'static_pages#top'
  get 'admin_user_login' ,to:'sessions#admin_user_login'
  post 'sessions_create' ,to:'sessions#create'
  delete 'admin_user_logout' ,to:'sessions#delete'
 
  resources:clients
  resources:client_sessions
  resources:users
  resources:user_sessions
  resources:shops
  resources:jobs
  resources:client_jobs, only:[:index, :edit]
  resources:entries

  patch '/client_jobs/:id/edit', to:'client_jobs#update'
  get 'mypage' , to:'users#mypage'


  delete 'client_session_delete' ,to:'client_sessions#delete'
  delete 'user_session_delete' ,to:'user_sessions#delete'
  get 'admin_top' ,to:'clients#admin_top'
  get 'shop_index', to:'clients#shop_index'
  get 'shop_edit/:id', to:'clients#shop_edit'
  patch 'shop_edit/:id', to:'clients#shop_edit_update'

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
