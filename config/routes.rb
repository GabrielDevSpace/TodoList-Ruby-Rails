Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items
   
  end
  root to: "todo_lists#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

