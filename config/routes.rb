Rails.application.routes.draw do

  # Orlena
  get 'home', to: 'pages#home', as: 'home'
  root "pages#home"

  devise_for :users, controllers: { registrations: 'users/registrations' }
  
  resources :articles do
    resources :comments
  end

  
  # Dionus
  resources :conventions do
    resources :reviews, only: [:create, :destroy]
  end

  get 'conventions/:convention_id/reviews', to: 'reviews#index', as: 'reviews'
  post 'conventions/:convention_id/reviews', to: 'reviews#create'
  get 'conventions/:convention_id/reviews/new', to: 'reviews#new', as: 'new_review'
  get '/conventions/:convention_id/reviews/:id/edit', to: 'reviews#edit', as: 'edit_review'
  get 'conventions/:convention_id/reviews/:id', to: 'reviews#show', as: 'review'
  patch '/conventions/:convention_id/reviews/:id', to: 'reviews#update'
  delete '/conventions/:convention_id/reviews/:id', to: 'reviews#destroy'



  # Suayeb Ahmed Question page routes
 

  get 'qa', to: 'qa#index', as: 'qa'
  post 'qa', to: 'qa#create'
  get 'qa/new', to: 'qa#new', as: 'new_qa'
  get 'qa/:id/edit', to: 'qa#edit', as: 'edit_qa'
  get 'qa/:id', to: 'qa#show', as: 'qa_show'
  patch 'qa/:id', to: 'qa#update'
  delete 'qa/:id', to: 'qa#destroy'

  # Omarcus Swims Jr 
  #get 'lists', to: 'lists#home', as: 'lists'
  get 'lists', to: 'lists#index', as: 'lists'
  get 'lists/:id', to: 'lists#show', as: 'list'
  



  # Suayeb Ahmed Answer page routes
  patch '/qa/:question_id/answers/:id', to: 'answers#update'
  get '/qa/:question_id/answers/:id/edit', to: 'answers#edit', as: 'edit_question_answer'
  post 'qa/:question_id/answers', to: 'answers#create'
  get 'qa/:question_id/answers/new', to: 'answers#new', as: 'new_question_answers'
  get 'qa/:question_id/answers', to: 'answers#index', as: 'question_answers'
  delete '/qa/:question_id/answers/:id', to: 'answers#destroy'
  get 'qa/:question_id/answers/:id', to: 'answers#show', as: 'question_answer'
  
end
