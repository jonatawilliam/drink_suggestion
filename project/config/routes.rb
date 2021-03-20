Rails.application.routes.draw do
  root to: 'drinks#index'
  resources :drinks, only: %i[index] 
  get 'search', to: 'drinks#search'
  get 'drink_recommendation', to: 'drinks#recommendation'
end
