Rails.application.routes.draw do
  resources :policy_value_tokens
  resources :value_configs
  resources :constraints
  resources :coverages
  resources :coverage_groups
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
