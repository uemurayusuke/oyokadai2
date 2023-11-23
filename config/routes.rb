Rails.application.routes.draw do

  get 'book_comments/create'
  get 'book_comments/destroy'
  get 'favorites/create'
  get 'favorites/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users

  root to: 'home#top'
  get 'home/about', as: 'about'

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
  resources :users, only: [:index,:show,:edit,:update,:create,:destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end