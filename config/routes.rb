Rails.application.routes.draw do
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

  # Suayeb Ahmed Answer Page routes
  # post 'qa/:question_id/create', to: 'qa#create_answer'
  #get 'qa/:question_id/new', to: 'answers#new', as: 'new_answer'
end
