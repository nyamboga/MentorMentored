MentorMentored::Application.routes.draw do
  get "educations/create"
  get "educations/destroy"
  #get "educations/new"
  get "professions/create"
  get "professions/destroy"
  #get "professions/new"
  get "communications/create"
  get "communications/destroy"
  get "availabilities/create"
  get "availabilities/destroy"
  #get "availability/new"
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :availabilities, only: [:create, :destroy]
  resources :communications, only: [:create, :destroy]
  resources :professions, only: [:create, :destroy]
  resources :educations, only: [:create, :destroy]
  
  root "static_pages#home"
  match '/signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new',via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  match '/default', to: 'static_pages#default', via: 'get'  
  match '/availabilities', to: 'availabilities#new', via: 'get'
  match '/communications', to: 'communications#new', via: 'get'
  match '/professions', to: 'professions#new', via: 'get'
  match '/educations', to: 'educations#new', via: 'get'
  #match '/availabilities/new', to: 'availability#new', via: 'post'
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
