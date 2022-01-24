Rails.application.routes.draw do
  get 'tastydescendant/listrecipes'
  get 'tastydescendant/detailrecipe'
  get 'tastydescendant/listtags'
  get 'tastydescendant/listfeeds'
  get 'tastydescendant/listsimilarities'
  get 'tastydescendant/autocomplete'
  get 'tastydescendant/index'
  resources :histories
  resources :schedules
  resources :libretes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
