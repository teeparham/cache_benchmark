CacheReplaceBenchmark::Application.routes.draw do
  resources :none, only: [:index]
  resources :replace, only: [:index]
  resources :replace_collection, only: [:index]
  resources :russian, only: [:index]
  resources :monkeys, only: [:show]
end
