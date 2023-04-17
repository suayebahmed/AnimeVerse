Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Suayeb Ahmed Question page routes
 

  get 'qa', to: 'qa#index', as: 'qa'
  post 'qa', to: 'qa#create'
  get 'qa/new', to: 'qa#new', as: 'new_qa'
  get 'qa/:id/edit', to: 'qa#edit', as: 'edit_qa'
  get 'qa/:id', to: 'qa#show', as: 'qa_show'
  patch 'qa/:id', to: 'qa#update'
  delete 'qa/:id', to: 'qa#destroy'

  #Dionas Jordan Route Pages

  get 'conventions', to: 'conventions#index', as: 'conventions'
  post 'conventions', to: 'conventions#create'
  get 'conventions/new', to: 'conventions#new', as: 'new_convention'
  get 'conventions/:id/edit', to: 'coventions#edit', as: 'edit_convention'
  get 'conventions/:id', to: 'conventions#show', as: 'convention'
  patch 'conventions/:id', to: 'conventions#update'
  delete 'conventions/:id', to: 'conventions#destroy'


  get 'conventions/:convention_id/ratings', to: 'ratings#index', as: 'convention_ratings'
  post 'conventions/:convention_id/ratings', to: 'ratings#create'
  get 'conventions/:convention_id/ratings/new', to: 'ratings#new', as: 'new_convention_rating'
  get '/conventions/:convention_id/ratings/:id/edit', to: 'ratings#edit', as: 'edit_convention_rating'
  get 'conventions/:convention_id/ratings/:id', to: 'ratings#show', as: 'convention_rating'
  patch '/conventions/:convention_id/ratings/:id', to: 'ratings#update'
  delete '/conventions/:convention_id/ratings/:id', to: 'ratings#destroy'
end
