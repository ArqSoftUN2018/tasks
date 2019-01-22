Rails.application.routes.draw do
  resources :tasks
  wash_out :ws_tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
