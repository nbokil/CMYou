Rails.application.routes.draw do

  resources :positions
  # Routes for main resources
  resources :tags
  resources :org_tags
  resources :organizations
  resources :commitments
  resources :interests
  resources :students
  resources :users
  resources :sessions

  # Set the root url
  root :to => 'home#home'

  # Authentication routes
  get 'home' => 'home#home', as: :home
  get 'user/edit' => 'users#edit', as: :edit_current_user
  get 'signup' => 'students#new', as: :signup
  get 'logout' => 'sessions#destroy', as: :logout
  get 'login' => 'sessions#new', as: :login
  get 'student/dashboard' => 'home#student_dashboard', as: :student_dashboard

end
