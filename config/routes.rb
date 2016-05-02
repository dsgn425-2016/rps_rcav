Rails.application.routes.draw do

get("/", { :controller => "moves", :action => "rock"})
get("/rock", { :controller => "moves", :action => "rock"})
get("/paper", { :controller => "moves", :action => "paper"})
get("/scissors", { :controller => "moves", :action => "scissors"})

# NOTES 5/2 CLASS
# when you add a : to the front, get("/:zebra",...), then anything you type into the link will work: localhost:3000/giraffe, etc. Anything typed after the :, you use the key "zebra" in whatever is typed after in the parameter hash -->
# params = {"zebra"=>"giraffe"} --> params hash is unique in that it can be a symbol or string
# apply it: @user_move = params["zebra"] --> this is how you gets something out of the params hash

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
