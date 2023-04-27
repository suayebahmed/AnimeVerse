Rails.application.routes.draw do
  resources :conventions
  get 'home', to: 'pages#home', as: 'home'
  root "pages#home"


  post '/rate' => 'rater#create', :as => 'rate'

  devise_for :users, controllers: { registrations: 'users/registrations' }

  resources :articles do
    resources :comments
  end

  




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
  



  #Dionas Jordan Route Pages



  get 'conventions/:convention_id/ratings', to: 'ratings#index', as: 'convention_ratings'
  post 'conventions/:convention_id/ratings', to: 'ratings#create'
  get 'conventions/:convention_id/ratings/new', to: 'ratings#new', as: 'new_convention_rating'
  get '/conventions/:convention_id/ratings/:id/edit', to: 'ratings#edit', as: 'edit_convention_rating'
  get 'conventions/:convention_id/ratings/:id', to: 'ratings#show', as: 'convention_rating'
  patch '/conventions/:convention_id/ratings/:id', to: 'ratings#update'
  delete '/conventions/:convention_id/ratings/:id', to: 'ratings#destroy'



  # Suayeb Ahmed Answer page routes
  patch '/qa/:question_id/answers/:id', to: 'answers#update'
  get '/qa/:question_id/answers/:id/edit', to: 'answers#edit', as: 'edit_question_answer'
  post 'qa/:question_id/answers', to: 'answers#create'
  get 'qa/:question_id/answers/new', to: 'answers#new', as: 'new_question_answers'
  get 'qa/:question_id/answers', to: 'answers#index', as: 'question_answers'
  delete '/qa/:question_id/answers/:id', to: 'answers#destroy'
  get 'qa/:question_id/answers/:id', to: 'answers#show', as: 'question_answer'
  
end
