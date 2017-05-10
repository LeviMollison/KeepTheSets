Rails.application.routes.draw do
  
  get 'player', :to => 'player_access#menu'
  get 'player_access/menu'
  get 'player_access/login'
  post 'player_access/attempt_login' #logging in
  get 'player_access/logout'
  post 'item_set/save_item_to_row'
  post 'item_set/delete_store_in'
  get 'item_set/add_new_row'
  post 'item_set/save_row_name'
  
  resources :item_set do
      member do
          get :delete
          get :display_row
      end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
