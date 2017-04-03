Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'calculates/new' => 'calculates#new', as: 'new_calculate'
  post 'calculates/create' => 'calculates#create'
  root 'calculates#new'
  resources :calculates
end
