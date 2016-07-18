Rails.application.routes.draw do
  devise_for :usuarios

  get 'pacientes/', to: 'pacientes#index', as: 'pacientes'
  get 'pacientes/nuevo', as: 'nuevo_paciente'
  post 'pacientes/', to: 'pacientes#crear'
  get 'pacientes/:id/editar', to: 'pacientes#editar', as: 'editar_paciente'
  get 'pacientes/:id', to: 'pacientes#mostrar', as: 'paciente'
  put 'pacientes/:id',to: 'pacientes#update'
  patch 'pacientes/:id' ,to: 'pacientes#update'
  delete 'pacientes/:id', to: 'pacientes#eliminar'

  resources :personas

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'pacientes#index'

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
