Rails.application.routes.draw do
  resources :recipes_lists do
    resources :todo_items
  end
  namespace :recipes_list do
    resources :todo_items
  end

  root "recipes_lists#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
